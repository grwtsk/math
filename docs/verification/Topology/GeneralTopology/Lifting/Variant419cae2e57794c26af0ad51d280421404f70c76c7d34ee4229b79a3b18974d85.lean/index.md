# Verification target: GRWTSK.Topology.GeneralTopology.Lifting.Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "563550223778da73d8509d3eb6f87cd99da7cae7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `563550223778da73d8509d3eb6f87cd99da7cae7`.

Source path: `GRWTSK/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.SimplyConnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocPathConnected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Covering` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lift_nhds](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/exists-lift-nhds--fd3d667cd6e85582747c056b.md) | 51 | `result-track:fd3d667cd6e85582747c056b8decf77564ff071bd428132685c98b00cb0bb795` |
| 2 | `theorem` | [continuous_lift](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/continuous-lift--c0bc17c6f191b4ab6de761be.md) | 128 | `result-track:c0bc17c6f191b4ab6de761befb3572d05788e2889eea4711c9602e583731307b` |
| 3 | `theorem` | [monodromy_theorem](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/monodromy-theorem--f4691be056c03c94da2d0617.md) | 155 | `result-track:f4691be056c03c94da2d061769e1173bcc6e99eeb7bc826a7f998207952d8a8a` |
| 4 | `theorem` | [existsUnique_continuousMap_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/existsunique-continuousmap-lifts--9e2ac299d661315eda3b80aa.md) | 172 | `result-track:9e2ac299d661315eda3b80aaaaad665e3cf37c59f77dfb381ac6370627226f64` |
| 5 | `theorem` | [exists_path_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/exists-path-lifts--bd0464001a752de67554d802.md) | 219 | `result-track:bd0464001a752de67554d80231fb2347b4798b43ebb815ca64e30a45b5a2c10e` |
| 6 | `def` | [liftPath](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/liftpath--af5e92aa31a796a92481bd0c.md) | 256 | `declaration-track:af5e92aa31a796a92481bd0c470084a00c34bc938a22ff67cbb89b4234c85b29` |
| 7 | `lemma` | [liftPath_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/liftpath-lifts--d3c5c7d58f220cf1027b9432.md) | 258 | `result-track:d3c5c7d58f220cf1027b9432c9dc6fbd11daddc517a6cb917aa63107245ca60b` |
| 8 | `lemma` | [liftPath_zero](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/liftpath-zero--9db3d175ec5986dd41fb3e86.md) | 259 | `result-track:9db3d175ec5986dd41fb3e866dfeef4722d87e3d5d59175831b913841c0b312a` |
| 9 | `lemma` | [eq_liftPath_iff](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/eq-liftpath-iff--1417dbfc2051eec70d0125ad.md) | 262 | `result-track:1417dbfc2051eec70d0125ad21e699b7ce2241bb6a6d6eaf8e6af64059cb2459` |
| 10 | `lemma` | [eq_liftPath_iff'](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/eq-liftpath-iff--c474468686ca41b05dfa1e10.md) | 269 | `result-track:c474468686ca41b05dfa1e102ed9d580a3db62df1d0d8ff884b0400d97339da5` |
| 11 | `def` | [liftHomotopy](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/lifthomotopy--f3b82b98986102c9093cba4f.md) | 280 | `declaration-track:f3b82b98986102c9093cba4ffdb5fe1d0f8b5ea806a15726263c95c8425f7adb` |
| 12 | `lemma` | [liftHomotopy_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/lifthomotopy-lifts--620d1df6f3a9f0f5890b5a26.md) | 288 | `result-track:620d1df6f3a9f0f5890b5a2631b4e3858cc36dadfb96dc8b1ed742f974d91612` |
| 13 | `lemma` | [liftHomotopy_zero](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/lifthomotopy-zero--faaaaef361907d44ce1d1ed5.md) | 291 | `result-track:faaaaef361907d44ce1d1ed55ffcc655e50fd5660d5de6c0a043fe456daa414c` |
| 14 | `lemma` | [eq_liftHomotopy_iff](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/eq-lifthomotopy-iff--dfbf9ad9092e286e3429d1dd.md) | 294 | `result-track:dfbf9ad9092e286e3429d1dd59517250af23ce3e784437e86ce0c5b2ce3dbb8c` |
| 15 | `lemma` | [eq_liftHomotopy_iff'](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/eq-lifthomotopy-iff--d9d7c885f79ce9d4076da18b.md) | 302 | `result-track:d9d7c885f79ce9d4076da18bacd2dce31784398f3b05139bc7b55f1621105431` |
| 16 | `def` | [liftHomotopyRel](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/lifthomotopyrel--234b2e4748c0be49672db6c0.md) | 312 | `declaration-track:234b2e4748c0be49672db6c0b81e09def4257abb7e79491b1e9e6cca962887f4` |
| 17 | `theorem` | [homotopicRel_iff_comp](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/homotopicrel-iff-comp--72404879586ebcd7cb8d60c5.md) | 335 | `result-track:72404879586ebcd7cb8d60c55b56727a51d170a4bce6e29548e7e741b8fb9852` |
| 18 | `theorem` | [liftPath_apply_one_eq_of_homotopicRel](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/liftpath-apply-one-eq-of-homotopicrel--7e706f043e2cf28e0beca0b7.md) | 342 | `result-track:7e706f043e2cf28e0beca0b70de34f4d3ecf0233822fa2085a406d7c8d3253e2` |
| 19 | `lemma` | [injective_path_homotopic_mapFn](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/injective-path-homotopic-mapfn--939816d493630fb2860464b2.md) | 352 | `result-track:939816d493630fb2860464b2249e3e218df37eb5b2d9b81b5d2713e620696529` |
| 20 | `theorem` | [existsUnique_continuousMap_lifts](../../../../../mathematics/Topology/GeneralTopology/Lifting/Variant419cae2e57794c26af0ad51d280421404f70c76c7d34ee4229b79a3b18974d85.lean/declarations/existsunique-continuousmap-lifts--2968c1ea4b04c446dd8b20fa.md) | 363 | `result-track:2968c1ea4b04c446dd8b20fa7787318d64676d8d702932d93da1c07233edf8c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
