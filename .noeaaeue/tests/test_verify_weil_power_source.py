import sys, json, tempfile, unittest, shutil
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2];sys.path.insert(0,str(ROOT/'.noeaaeue/scripts'))
import verify_weil_power_source as R

class ReplayControls(unittest.TestCase):
    def test_duplicate_json(self):
        with self.assertRaises(ValueError):R.decode('{"x":1,"x":2}')
    def test_nonfinite_json(self):
        for s in ('NaN','Infinity','-Infinity'):
            with self.assertRaises(ValueError):R.decode('{"x":'+s+'}')
    def test_empty_source(self):
        with self.assertRaises(ValueError):R.validate_source({})
    def test_boolean_not_number(self):
        x={'schema':'weil-prime-discrepancy-v1','profiles':[{}, {}, {}],'RH':0,'native_Lean':False,'uniform_source_lower_bound':False}
        with self.assertRaises(ValueError):R.validate_source(x)
    def test_promoted_status(self):
        x={'schema':'weil-prime-discrepancy-v1','profiles':[{}, {}, {}],'RH':True}
        with self.assertRaises(ValueError):R.validate_source(x)
    def test_missing_input(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaises(ValueError):R.check_inputs({'missing':{'bytes':1,'sha256':'x'}},Path(d))
    def test_altered_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d).resolve();(p/'x').write_bytes(b'bad')
            with self.assertRaises(ValueError):R.check_inputs({'x':{'bytes':3,'sha256':R.digest(b'yes')}},p)
    def test_path_escape(self):
        with self.assertRaises(ValueError):R.check_inputs({'../x':{}},Path('/tmp'))
    def test_absolute_path(self):
        with self.assertRaises(ValueError):R.check_inputs({'/tmp/x':{}},Path('/tmp'))
    def test_symlink_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d).resolve();(p/'a').write_bytes(b'x');(p/'b').symlink_to(p/'a')
            with self.assertRaises(ValueError):R.check_inputs({'b':{'bytes':1,'sha256':R.digest(b'x')}},p)
    def test_exact_input(self):
        with tempfile.TemporaryDirectory() as d:
            p=Path(d).resolve();(p/'x').write_bytes(b'correct')
            R.check_inputs({'x':{'bytes':7,'sha256':R.digest(b'correct')}},p)
    def test_archive_verified_without_extraction(self):
        # Replay archive custody against the preserved source generation. The
        # current relocated test has different path-discovery bytes and must
        # not be silently rebound to this historical source acceptance.
        with tempfile.TemporaryDirectory() as d:
            root=Path(d).resolve()
            names=('scripts/weil_compact_power.py','tests/test_weil_compact_power.py')
            for name in names:
                target=R.repository_path(root,name);target.parent.mkdir(parents=True,exist_ok=True)
                shutil.copyfile(ROOT/'.noeaaeue/root-cleanup/originals'/name,target)
            for name in ('original-index.json','original-compact-power.tar.xz'):
                target=root/R.BASE/name;target.parent.mkdir(parents=True,exist_ok=True)
                shutil.copyfile(ROOT/R.BASE/name,target)
            name='evidence/analysis/weil-compact-power-20261015/derivation.txt'
            target=R.repository_path(root,name);target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(R.repository_path(ROOT,name),target)
            m=R.archive_members(root)
            self.assertIn('scripts/weil_compact_power.py',m)
            self.assertEqual(len([x for x in m if '/candidates/' in x]),2)
    def test_current_relocated_test_does_not_inherit_historical_pin(self):
        with self.assertRaisesRegex(ValueError,'original active copy changed'):R.archive_members()

if __name__=='__main__':unittest.main()
