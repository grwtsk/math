# Verification target: GRWTSK.Algebra.UniversalAlgebra.Sqrt.Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7f03a7719dce82f4144eef42eb4f9f4b9c40e71",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7f03a7719dce82f4144eef42eb4f9f4b9c40e71`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Sqrt` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt--898c433cba70d064167dc097.md) | 33 | `declaration-track:898c433cba70d064167dc0973ff87048bd6db89dd3016d734bb595e455fcad64` |
| 2 | `theorem` | [sqrt_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt-eq--048e0a06da88914dbca3c3be.md) | 35 | `result-track:048e0a06da88914dbca3c3be8d17411a008f6e8dd7da5bebcad4919e5fcf9aeb` |
| 3 | `theorem` | [exists_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/exists-mul-self--460b6389b390ead1a42b642e.md) | 38 | `result-track:460b6389b390ead1a42b642e4fd6c961f5826babea620254717e2e53018ec6fe` |
| 4 | `lemma` | [sqrt_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt-nonneg--bdc4ed9fc9a7c65733323514.md) | 41 | `result-track:bdc4ed9fc9a7c65733323514a87c1663999c9a09c57cbc600049e8389afd165f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/instance--04e5279ef20312f216dce934.md) | 44 | `declaration-track:04e5279ef20312f216dce9348389a365cf162531a713dc72871eea06df6b9831` |
| 6 | `theorem` | [sqrt_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt-intcast--30991f7bf477759a8efcf4a7.md) | 49 | `result-track:30991f7bf477759a8efcf4a797007622d2339b82b8f9d723eb3ddd6ac40e1dc7` |
| 7 | `theorem` | [sqrt_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt-natcast--02bb6f3b10490045e9d08a01.md) | 53 | `result-track:02bb6f3b10490045e9d08a0102f3e097b35f0e5d9b15ab4c5707442e2d18aa61` |
| 8 | `theorem` | [sqrt_ofNat](../../../../../mathematics/Algebra/UniversalAlgebra/Sqrt/Variant08f32f63e1af941ed2577175d97c0e0866b8be7afffb96f58eb73cc159325151.lean/declarations/sqrt-ofnat--21896c0ad042ad3ef1e72b2b.md) | 57 | `result-track:21896c0ad042ad3ef1e72b2b99ba3705a2badfddc1482c541ea29cfba0e76eee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
