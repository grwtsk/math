# Verification target: GRWTSK.Analysis.Isometric.Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef0bb2587757bdc2f4e0bf0017ee4334566aef5c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef0bb2587757bdc2f4e0bf0017ee4334566aef5c`.

Source path: `GRWTSK/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [nnnorm_nnrpow](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/nnnorm-nnrpow--140a2d35aa1740cf1c1f3775.md) | 34 | `result-track:140a2d35aa1740cf1c1f3775c157650a9b18b428c73d1de7027e7c696c0aed5e` |
| 2 | `lemma` | [norm_nnrpow](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/norm-nnrpow--e981bbbb79f4368c67f1efe0.md) | 38 | `result-track:e981bbbb79f4368c67f1efe0985dee84dc0bb07c20fcf1baeeffdf0d63cfb991` |
| 3 | `lemma` | [nnnorm_sqrt](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/nnnorm-sqrt--5ffc47c8b442079ded046da0.md) | 42 | `result-track:5ffc47c8b442079ded046da00aade22ec3c9086aaee445482cf8eb532cbe4151` |
| 4 | `lemma` | [norm_sqrt](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/norm-sqrt--3ecf8265d634747ae782dcb9.md) | 46 | `result-track:3ecf8265d634747ae782dcb9c708a12b35c48a20299d95bb4a9bff934934224b` |
| 5 | `lemma` | [nnnorm_rpow](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/nnnorm-rpow--11f83173066d10297f84f7f5.md) | 57 | `result-track:11f83173066d10297f84f7f569d403b282003c88078ab3e05745e96a920eee0a` |
| 6 | `lemma` | [norm_rpow](../../../../mathematics/Analysis/Isometric/Variantc2456ea77446028927f10da4667d1970d84b213857371f763857ea04f5d37454.lean/declarations/norm-rpow--ba8575a320cd29afb58104b2.md) | 63 | `result-track:ba8575a320cd29afb58104b2d320f4fa08a470d50e14474d959805c1440fd589` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
