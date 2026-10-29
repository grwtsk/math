import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M536f75726365547265652f4e6f4475702e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f5072696d65566572622e6c65616e
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f436f7665726167652e6c65616e
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f506c6163656d656e742e6c65616e
import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M536f75726365547265652f436f6d70616374696f6e2e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M536f75726365547265652f4e6f64652e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f41726974686d65746963536861646f772e6c65616e
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f4173744f776e6572736869702e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.M536f75726365547265652f4d756c74696e6f6d69616c2e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f506f6c6541737369676e6d656e742e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M536f75726365547265652f496d706f7274436c6f737572652e6c65616e
import Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M536f75726365547265652f5765696768742e6c65616e
import Think.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.M536f75726365547265652f436f6d70616374537572666163652e6c65616e
import Think.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M536f75726365547265652f42696e6f6d69616c5472616e73706f72742e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.M536f75726365547265652f436f6d70616374436f6e7472616374696f6e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M536f75726365547265652f56657262576f72642e6c65616e
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f5068617365732f5068617365537065632e6c65616e
import Think.Bit0.Bit0.Bit1.Bit1.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f5068617365732f506861736553796d6d657472792e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f5068617365732f50686173655461626c652e6c65616e
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.M506970656c696e652f5068617365732f5068617365526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=00001011|role=proof_code_atom|slug=validation-phasecoverage|owner=canonical_owner|core=Validation/PhaseCoverage.lean|leaf=M56616c69646174696f6e2f5068617365436f7665726167652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation

theorem everyPhaseRepresented :
    ∀ p : Think.PhaseId, ∃ q : Think.SourceTree.PhasePlacement, q.phase = p := by
  exact Think.SourceTree.every_phase_has_placement

theorem importedPhaseModules_match_centerSpine :
    Think.Pipeline.Phases.allPhaseModules = Think.centerSpine := by
  exact Think.Pipeline.Phases.allPhaseModules_eq_centerSpine

end Think.Validation
