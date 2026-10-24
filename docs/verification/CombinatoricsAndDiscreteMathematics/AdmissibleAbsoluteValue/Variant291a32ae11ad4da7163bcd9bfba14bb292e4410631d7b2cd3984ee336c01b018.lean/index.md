# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.AdmissibleAbsoluteValue.Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0bfeeda0a7b377fbaf3647af8e71f3e5945d0b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0bfeeda0a7b377fbaf3647af8e71f3e5945d0b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Euclidean` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdmissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/declarations/isadmissible--841a4030bd80e71e6ba5d57f.md) | 48 | `declaration-track:841a4030bd80e71e6ba5d57f4a8a9d9e5a58c791a257cff378cdd410d11abeec` |
| 2 | `theorem` | [exists_partition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/declarations/exists-partition--8fc82e07e0e26ddec413c48a.md) | 63 | `result-track:8fc82e07e0e26ddec413c48a243992202048c9c2cf645ba85f8acfdbe6c2cb52` |
| 3 | `theorem` | [exists_approx_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/declarations/exists-approx-aux--080e9e3a2d9536eeb847a116.md) | 74 | `result-track:080e9e3a2d9536eeb847a116d1afe3ac60e70670c6422e26dfdae22824fa619e` |
| 4 | `theorem` | [exists_approx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/AdmissibleAbsoluteValue/Variant291a32ae11ad4da7163bcd9bfba14bb292e4410631d7b2cd3984ee336c01b018.lean/declarations/exists-approx--9094e8450be04260fb6210cf.md) | 126 | `result-track:9094e8450be04260fb6210cf34f9c452220e10b784bca160b88b3e32a3812d9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
