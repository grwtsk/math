# Verification target: GRWTSK.Topology.AlgebraicTopology.FundamentalGroup.Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "175321341b5efd7fab1525fba5f1569b01431f80",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `175321341b5efd7fab1525fba5f1569b01431f80`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Groupoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.FundamentalGroupoid.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FundamentalGroup](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/fundamentalgroup--df15cb0f6bba9b6d7a86437a.md) | 39 | `declaration-track:df15cb0f6bba9b6d7a86437ac1603d1dfec194728a8137515e6b44462f182024` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/instance--3e972c8dab3875e2d91a4009.md) | 42 | `declaration-track:3e972c8dab3875e2d91a4009dc3cd9b5383b79c53fd1c4cc0438fabfa8f74356` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/instance--d8d5c881b60e6fe32fad6cae.md) | 46 | `declaration-track:d8d5c881b60e6fe32fad6caeab12db93c9e837903ffddf35f3414f0a11ae900a` |
| 4 | `def` | [fundamentalGroupMulEquivOfPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/fundamentalgroupmulequivofpath--61858063978def1f28586454.md) | 55 | `declaration-track:61858063978def1f28586454a0b65fb79e97b41dc8e8d57f957edd789ffdfe4f` |
| 5 | `def` | [fundamentalGroupMulEquivOfPathConnected](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/fundamentalgroupmulequivofpathconnected--b316198ec3a67687ea215877.md) | 62 | `declaration-track:b316198ec3a67687ea2158774501bf9eabed2f4416cd28b8d7f55b2e9cad9ae2` |
| 6 | `abbrev` | [toArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/toarrow--58729e38a74fce4c4c3d2fe8.md) | 67 | `declaration-track:58729e38a74fce4c4c3d2fe8f545d11fdaf4c15e480c6e70dfedcb6fb0b4a955` |
| 7 | `abbrev` | [toPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/topath--7a1ba51ecd93b83de011fad2.md) | 72 | `declaration-track:7a1ba51ecd93b83de011fad2358598636baa34474918b3abfdce23abbd48788e` |
| 8 | `abbrev` | [fromArrow](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/fromarrow--1cd795f1945448e4444ec8e9.md) | 76 | `declaration-track:1cd795f1945448e4444ec8e933f4ae3e1cf10afae78bf5a335f90945e20ade71` |
| 9 | `abbrev` | [fromPath](../../../../../mathematics/Topology/AlgebraicTopology/FundamentalGroup/Variant49254fc6bb301bbe87ba05b68e7a53548b38b04bbab84a51d61c524553b1b36d.lean/declarations/frompath--59f8edbc1a02ff414aa57f45.md) | 83 | `declaration-track:59f8edbc1a02ff414aa57f451638365384f5a7f393a62b47fe94b52af851b5a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
