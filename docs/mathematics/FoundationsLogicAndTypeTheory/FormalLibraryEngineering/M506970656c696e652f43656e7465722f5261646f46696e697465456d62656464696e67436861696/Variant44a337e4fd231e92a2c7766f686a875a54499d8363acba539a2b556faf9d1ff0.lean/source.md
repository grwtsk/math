# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696.Variant44a337e4fd231e92a2c7766f686a875a54499d8363acba539a2b556faf9d1ff0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6098367db48131b4561dcc9031d75e71e6fb5101` · SHA-256 `e758bc231cadaffa1790f2e96442267617818fb1a6e3169bdc89fadc841f0718`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgreesOnPrefix.Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AgreesOnPrefix.Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6","mathematical_subject":"Foundations.Unclassified","original_sha256":"ee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696e2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f5261646f456d62656464696e67457874656e73696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=00000011|role=proof_code_atom|slug=pipeline-center-radofiniteembeddingchain|owner=canonical_owner|core=Pipeline/Center/RadoFiniteEmbeddingChain.lean|leaf=M506970656c696e652f43656e7465722f5261646f46696e697465456d62656464696e67436861696e2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AgreesOnPrefix.Variantee75b8dce365f5a149dc7c6077d22d1d24e4c2ac987049cae70a118d4d11a2b6

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoFiniteEmbeddingChain

open Think.Pipeline.Center.RadoFiniteEmbedding
open Think.Pipeline.Center.RadoEmbeddingExtension

/-!
Finite staged embedding chain for the bit-coded Rado graph.

This theorem iterates the checked one-point extension lemma for a bounded
number of steps.  It is still only a finite-prefix theorem; it does not assert
countable universality, homogeneity, heatflow convergence, or any analytic
target authority.
-/

def AgreesOnPrefix (m : Nat) (f g : Nat -> Nat) : Prop :=
  ∀ i : Nat, i < m -> g i = f i

theorem agreesOnPrefix_refl (m : Nat) (f : Nat -> Nat) :
    AgreesOnPrefix m f f := by
  intro _i _hi
  rfl

theorem agreesOnPrefix_extend
    {m k z : Nat} {f g : Nat -> Nat}
    (hmk : m ≤ k)
    (hagrees : AgreesOnPrefix m f g) :
    AgreesOnPrefix m f (extend g k z) := by
  intro i hi
  have hik : i < k := Nat.lt_of_lt_of_le hi hmk
  have hne : i ≠ k := Nat.ne_of_lt hik
  rw [extend, if_neg hne]
  exact hagrees i hi

theorem bitRado_extend_embedding_prefix_by_steps
    (G : FiniteBoolGraph)
    (m t : Nat)
    (hmt : m + t ≤ G.n)
    (f : Nat -> Nat)
    (hemb : EmbedsPrefix G m f) :
    ∃ g : Nat -> Nat,
      AgreesOnPrefix m f g ∧
        EmbedsPrefix G (m + t) g := by
  induction t with
  | zero =>
      refine ⟨f, agreesOnPrefix_refl m f, ?_⟩
      simpa using hemb
  | succ t ih =>
      have hprev : m + t ≤ G.n := by
        exact Nat.le_trans (Nat.le_add_right (m + t) 1) hmt
      obtain ⟨g, hagrees, hgemb⟩ := ih hprev
      have hlt : m + t < G.n := by
        have hsucc : (m + t) + 1 ≤ G.n := by
          simpa [Nat.add_assoc] using hmt
        exact Nat.lt_of_succ_le hsucc
      obtain ⟨z, _hzfresh, hnext⟩ :=
        bitRado_extend_finite_induced_embedding G (m + t) hlt g hgemb
      refine ⟨extend g (m + t) z, ?_, ?_⟩
      · exact
          agreesOnPrefix_extend
            (Nat.le_add_right m t)
            hagrees
      · simpa [Nat.add_assoc] using hnext

end Think.Pipeline.Center.RadoFiniteEmbeddingChain
```
