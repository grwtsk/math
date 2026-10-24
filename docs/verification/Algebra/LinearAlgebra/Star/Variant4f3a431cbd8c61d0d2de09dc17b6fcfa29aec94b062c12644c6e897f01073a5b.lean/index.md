# Verification target: GRWTSK.Algebra.LinearAlgebra.Star.Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5985054502116d861f472e0913980aba8a748dd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5985054502116d861f472e0913980aba8a748dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarRing](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/inststarring--0868dfb90fb192e68b3a48f2.md) | 32 | `declaration-track:0868dfb90fb192e68b3a48f2d65c26483160bb9e58b7f9d9f1775b38915f8853` |
| 2 | `theorem` | [star_def](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/star-def--cf4683df9561377757ca403f.md) | 39 | `result-track:cf4683df9561377757ca403f6fde87e2b166d23e3745707b734fcdeb1e6f709e` |
| 3 | `theorem` | [star_def'](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/star-def--8ca721c37e1204f25660f1fb.md) | 42 | `result-track:8ca721c37e1204f25660f1fbe162e3f418f515bd3570a8ffcead8ada626c2f1a` |
| 4 | `theorem` | [star_ι](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/star--21cdc203cdae46c1651a40cb.md) | 46 | `result-track:21cdc203cdae46c1651a40cbd5590234053ab214643e378aaf8671d8dab3a71b` |
| 5 | `theorem` | [star_smul](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/star-smul--1a8b74529623c051c2ae7040.md) | 52 | `result-track:1a8b74529623c051c2ae70407f1b96235b9bb84d295f753785dafed8178a4e27` |
| 6 | `theorem` | [star_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Star/Variant4f3a431cbd8c61d0d2de09dc17b6fcfa29aec94b062c12644c6e897f01073a5b.lean/declarations/star-algebramap--9ab0c1971fa0155a88bef181.md) | 56 | `result-track:9ab0c1971fa0155a88bef18121ab6b9438ab466cb4afe0cddbf22715be16471b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
