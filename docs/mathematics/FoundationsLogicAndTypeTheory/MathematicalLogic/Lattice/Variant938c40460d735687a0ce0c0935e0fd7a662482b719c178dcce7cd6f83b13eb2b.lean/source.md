# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lattice.Variant938c40460d735687a0ce0c0935e0fd7a662482b719c178dcce7cd6f83b13eb2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `480aad69801ce73836c33eb2bccceb938aed0ed4` · SHA-256 `84ba80208b31c7451c45f83311e6278d279bd8c45d2f0995748e065dde670c89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Operations.Variant2a03bb80a35e5bdc0e6340854e3b4a1fbf6ceea19e6114c7ea870e7373917bd8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a03bb80a35e5bdc0e6340854e3b4a1fbf6ceea19e6114c7ea870e7373917bd8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Operations.Variant2a03bb80a35e5bdc0e6340854e3b4a1fbf6ceea19e6114c7ea870e7373917bd8","mathematical_subject":"Logic.Foundations","original_sha256":"2a03bb80a35e5bdc0e6340854e3b4a1fbf6ceea19e6114c7ea870e7373917bd8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Matrix/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Matrix.Operations


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Operations.Variant2a03bb80a35e5bdc0e6340854e3b4a1fbf6ceea19e6114c7ea870e7373917bd8

namespace Surface.Boolean

/--
Nonempty Boolean matrices form a Boolean algebra pointwise.

The nonempty assumptions are needed because an empty `0 × n` or `m × 0`
matrix has no cells, so its all-zero and all-one matrices are extensionally equal.
-/
instance BoolMatrix.instBooleanAlgebraCore
    [Nonempty (Fin rows)]
    [Nonempty (Fin cols)] :
    BooleanAlgebraCore (BoolMatrix rows cols) where
  join := BoolMatrix.join
  meet := BoolMatrix.meet
  compl := BoolMatrix.compl
  bot := BoolMatrix.zeros
  top := BoolMatrix.ones

  bot_ne_top := by
    intro h
    let i : Fin rows :=
      Classical.choice (inferInstance : Nonempty (Fin rows))
    let j : Fin cols :=
      Classical.choice (inferInstance : Nonempty (Fin cols))
    have hij : BoolMatrix.zeros i j = BoolMatrix.ones i j := by
      exact congrFun (congrFun h i) j
    cases hij

  join_bot := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.zeros]

  meet_top := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.ones]

  join_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> rfl

  meet_comm := by
    intro A B
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> rfl

  join_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_assoc := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_meet_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  meet_join_distrib := by
    intro A B C
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.meet]
    cases A i j <;> cases B i j <;> cases C i j <;> rfl

  join_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.join, BoolMatrix.ones, BoolMatrix.compl]

  meet_compl := by
    intro A
    funext i
    funext j
    simp [BoolMatrix.meet, BoolMatrix.zeros, BoolMatrix.compl]

end Surface.Boolean
```
