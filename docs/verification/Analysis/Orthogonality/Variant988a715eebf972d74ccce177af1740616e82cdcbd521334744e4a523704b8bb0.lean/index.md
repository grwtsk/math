# Verification target: GRWTSK.Analysis.Orthogonality.Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db0b55a396879052336bfa7f479a875744aa4dd6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db0b55a396879052336bfa7f479a875744aa4dd6`.

Source path: `GRWTSK/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Inner` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_ite](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/expect-eq-ite--9715ca7057a83bc776fcfb4f.md) | 31 | `result-track:9715ca7057a83bc776fcfb4f295b24df0c48059375f2fba6ffff17ad042e903c` |
| 2 | `lemma` | [expect_eq_zero_iff_ne_zero](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/expect-eq-zero-iff-ne-zero--5b4995218d5f5e9d11f67030.md) | 34 | `result-track:5b4995218d5f5e9d11f67030415e0311a377b1c153a7d2ff4a69cef6be46180a` |
| 3 | `lemma` | [expect_ne_zero_iff_eq_zero](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/expect-ne-zero-iff-eq-zero--a52f469cbedeed97d20b6e4f.md) | 37 | `result-track:a52f469cbedeed97d20b6e4fa7c28b82a179c2fe7daf7702431f210ee59f7446` |
| 4 | `lemma` | [wInner_cWeight_self](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/winner-cweight-self--bd86a5cd2ddda849b1528bf9.md) | 44 | `result-track:bd86a5cd2ddda849b1528bf9f5913af0a089f6374ff7fabb227418e8e842c2ce` |
| 5 | `lemma` | [wInner_cWeight_eq_boole](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/winner-cweight-eq-boole--2ab73e035ba920b64b7ac3f3.md) | 56 | `result-track:2ab73e035ba920b64b7ac3f3d02455f90caf493f815b9a5e935c5f4985e3645c` |
| 6 | `lemma` | [wInner_cWeight_eq_zero_iff_ne](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/winner-cweight-eq-zero-iff-ne--7a81cad8ecfe243166a5bda9.md) | 64 | `result-track:7a81cad8ecfe243166a5bda96aa3c9bf56a2bb39af631baa9aef3b516619c638` |
| 7 | `lemma` | [wInner_cWeight_eq_one_iff_eq](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/winner-cweight-eq-one-iff-eq--4dbb65f44e0f38c2c461816f.md) | 67 | `result-track:4dbb65f44e0f38c2c461816fb4b1ead0bedaf61ebb1315ad744ad8cb3c13289d` |
| 8 | `lemma` | [linearIndependent](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/linearindependent--979bf95f11cbfa8aca226a2b.md) | 72 | `result-track:979bf95f11cbfa8aca226a2b3bc79e5a3feffb41ff02d7b601173e23349e28f4` |
| 9 | `instance` | [instFintype](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/instfintype--836aed00bedb9ac145585ecc.md) | 77 | `declaration-track:836aed00bedb9ac145585ecc5cfb52235e63655223f5563b13b376e7f78bd340` |
| 10 | `lemma` | [card_addChar_le](../../../../mathematics/Analysis/Orthogonality/Variant988a715eebf972d74ccce177af1740616e82cdcbd521334744e4a523704b8bb0.lean/declarations/card-addchar-le--c00122bbfd66574090dcbe0d.md) | 80 | `result-track:c00122bbfd66574090dcbe0df79af90412bdb9840856de4bb33a6bf0470d0a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
