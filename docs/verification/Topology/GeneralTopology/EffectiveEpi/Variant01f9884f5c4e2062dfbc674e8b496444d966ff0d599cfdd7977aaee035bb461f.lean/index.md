# Verification target: GRWTSK.Topology.GeneralTopology.EffectiveEpi.Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aca8cb692be544dbf607c65349f7f2a6453cfd88",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aca8cb692be544dbf607c65349f7f2a6453cfd88`.

Source path: `GRWTSK/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [relation](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/relation--add61918d341f9b8bda8eb82.md) | 60 | `declaration-track:add61918d341f9b8bda8eb82167ab0139d1f471525fae0005735131453fdce59` |
| 2 | `def` | [ιFun](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/fun--478ec2f245c72be8e0bf6197.md) | 84 | `declaration-track:478ec2f245c72be8e0bf6197c5ccb9aae07074d527c70a1f68ed3217b1e99818` |
| 3 | `lemma` | [ιFun_continuous](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/fun-continuous--d1e20cf4447117547679190e.md) | 93 | `result-track:d1e20cf4447117547679190eaa1445727b65af9284b3ea3a1d85d337cf77f0fc` |
| 4 | `lemma` | [ιFun_injective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/fun-injective--ac9622e7f7414ee6ac0e7fc0.md) | 100 | `result-track:ac9622e7f7414ee6ac0e7fc0baa70f937e9ea2be2d0365735672ba851e72a077` |
| 5 | `def` | [QB'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/qb--ff79f031fdd29649001cc6cf.md) | 108 | `declaration-track:ff79f031fdd29649001cc6cf2775b0313fe02225e0700d8a1d80e7173acfc25e` |
| 6 | `def` | [ιHom'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/hom--2375a0f83dd8b79796079003.md) | 114 | `declaration-track:2375a0f83dd8b797960790039ff1e3f0a79b5fc5601db94360d6f7e8877bcc21` |
| 7 | `def` | [ιIso'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/iso--039aeb33615b3d9552e5922c.md) | 118 | `declaration-track:039aeb33615b3d9552e5922c17da2d03b9bbbde01c643b65429c80df8ffa4cde` |
| 8 | `def` | [QB](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/qb--26f0ed745a186845b049a77f.md) | 128 | `declaration-track:26f0ed745a186845b049a77f6cfb3880f3322cb63cfd9995599056d3f61030da` |
| 9 | `def` | [ιHom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/hom--6d1071578937720397e13f53.md) | 134 | `declaration-track:6d1071578937720397e13f53e289a4b715ac8e04e7446f07ff0e641626983303` |
| 10 | `def` | [ιIso](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/iso--32e340ae07aa7639794b92e9.md) | 138 | `declaration-track:32e340ae07aa7639794b92e925c9ef271bbd774540d3174a22487f95083b5719` |
| 11 | `def` | [π'](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/anonymous--a04868ed18dbe13da955d89f.md) | 148 | `declaration-track:a04868ed18dbe13da955d89f5e96eae59ce5bf5ec7da9295eb9154eaf385df16` |
| 12 | `def` | [structAux](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/structaux--53bfe6b9756c70a60d38bfac.md) | 156 | `declaration-track:53bfe6b9756c70a60d38bfac64ca3c979ed26c00f56c8727fe59ab00286fcf5c` |
| 13 | `lemma` | [π'_comp_ι_hom](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/comp-hom--6e4ea699a87d14ede7e37b4d.md) | 187 | `result-track:6e4ea699a87d14ede7e37b4d4be90bf021ea31f1c14b8a8b7215983ddf573f44` |
| 14 | `lemma` | [π_comp_ι_inv](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/comp-inv--e979a3e1df46901e5e02e7e2.md) | 193 | `result-track:e979a3e1df46901e5e02e7e2b02942585c408474dcf47e27843d51d135137179` |
| 15 | `def` | [struct](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/struct--003ab18dfde828e9a0cabd66.md) | 202 | `declaration-track:003ab18dfde828e9a0cabd660a8f18184608dc2a995e5c36b733b1a19a140b7e` |
| 16 | `theorem` | [effectiveEpiFamily_of_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/effectiveepifamily-of-jointly-surjective--b15e898dfbe2d5de9e9d7a6c.md) | 223 | `result-track:b15e898dfbe2d5de9e9d7a6ce688e033505d34ea58d06d9117753e813d7da5cf` |
| 17 | `theorem` | [effectiveEpiFamily_tfae](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/effectiveepifamily-tfae--d9f0e982c9a69cba3865e338.md) | 237 | `result-track:d9f0e982c9a69cba3865e33818c0c85e6724d99a433eab5c6c36341620140258` |
| 18 | `instance` | [instPrecoherent](../../../../../mathematics/Topology/GeneralTopology/EffectiveEpi/Variant01f9884f5c4e2062dfbc674e8b496444d966ff0d599cfdd7977aaee035bb461f.lean/declarations/instprecoherent--64088a22c8c2c0560ebc0172.md) | 280 | `declaration-track:64088a22c8c2c0560ebc0172dcd606da8a27b261d1355409efa4087d3a278959` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
