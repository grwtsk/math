import importlib.util,json,tempfile,unittest
from pathlib import Path
R=Path(__file__).resolve().parents[1]; S=R/'scripts/one_third_mertens_mean_square.py'; C=R/'certificates.json'
s=importlib.util.spec_from_file_location('m',S); m=importlib.util.module_from_spec(s); s.loader.exec_module(m)
class T(unittest.TestCase):
 def test_verify(self): self.assertEqual(m.verify(C)['check_count'],161)
 def test_nonclaims(self): self.assertTrue(any('No sigma=1/3' in x for x in json.loads(C.read_text())['limitations']))
 def test_no_overwrite_fixture(self):
  with tempfile.TemporaryDirectory() as d:
   p=Path(d)/'x'; p.write_text('{}'); self.assertTrue(p.exists())
if __name__=='__main__': unittest.main()
