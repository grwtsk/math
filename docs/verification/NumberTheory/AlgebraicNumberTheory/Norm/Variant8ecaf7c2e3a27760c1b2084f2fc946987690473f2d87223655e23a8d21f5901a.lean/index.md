# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Norm.Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc7acfb7bbf33dbc728135d8c265804131b87c3a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc7acfb7bbf33dbc728135d8c265804131b87c3a`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/norm--73eca90819936a8da27fa480.md) | 43 | `declaration-track:73eca90819936a8da27fa480b54820b63399ba484a8bb5103ddd08f4aa278f9c` |
| 2 | `theorem` | [coe_algebraMap_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/coe-algebramap-norm--2e6389871384e12631379446.md) | 47 | `result-track:2e6389871384e126313794460847673732a9fb8d5d5b7df891d01b7024c36b49` |
| 3 | `theorem` | [coe_norm_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/coe-norm-algebramap--e69a503afc2d90baa3f8cf2f.md) | 52 | `result-track:e69a503afc2d90baa3f8cf2f7999c53ca29d803140c999fdb30a4fbe0749a9f4` |
| 4 | `theorem` | [norm_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/norm-algebramap--022ec5272fc1d2573f97a33d.md) | 57 | `result-track:022ec5272fc1d2573f97a33daf103999e062211e48a8cc8fd35fe143c61b5e04` |
| 5 | `theorem` | [isUnit_norm_of_isGalois](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/isunit-norm-of-isgalois--32aa56740062edff20eb34aa.md) | 63 | `result-track:32aa56740062edff20eb34aa597c76a0bb0c097de5e5f83e52ac56a0ab116a96` |
| 6 | `theorem` | [dvd_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/dvd-norm--50a24ebbbc843f34e214d4a7.md) | 81 | `result-track:50a24ebbbc843f34e214d4a726f314b16a61ad1c9b4c502c49201d084f22bdfd` |
| 7 | `theorem` | [norm_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/norm-norm--28a9a57c323236569a3916e2.md) | 93 | `result-track:28a9a57c323236569a3916e2d5a1373c650e8c35bdf38031fbe456c7811e4db0` |
| 8 | `theorem` | [isUnit_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant8ecaf7c2e3a27760c1b2084f2fc946987690473f2d87223655e23a8d21f5901a.lean/declarations/isunit-norm--54e71522bdbfd51dfa489a1a.md) | 100 | `result-track:54e71522bdbfd51dfa489a1a9c8dfd84548d366a5c030da98ed877c950127b72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
