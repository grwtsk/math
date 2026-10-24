# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "981a1cc9fa992da80fbfbda71df863dd1aa8a7a2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `981a1cc9fa992da80fbfbda71df863dd1aa8a7a2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripStructuredTransport`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripStructuredTransport.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroDefinitions`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZeroDefinitions.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpectralPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/spectralpoint--d6ae59b67dafc42c2d81e31f.md) | 39 | `declaration-track:d6ae59b67dafc42c2d81e31fbe5b8998a50de5cda6869cd3a86350b5e624e92b` |
| 2 | `abbrev` | [ModuleCarrier](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/modulecarrier--0705d3aa03c357f714c3086d.md) | 42 | `declaration-track:0705d3aa03c357f714c3086d3d876af22c7abf1eae7ebb05743362c663bb6154` |
| 3 | `abbrev` | [Operator](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/operator--8017e1efa8be410680ae5f2a.md) | 45 | `declaration-track:8017e1efa8be410680ae5f2a598cbf2dcd65f0f8628dec8396b1f0c99bd52334` |
| 4 | `def` | [sourceId](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/sourceid--04449e85543f766eda5a2bce.md) | 48 | `declaration-track:04449e85543f766eda5a2bce57568902c1936b966d8fd55e1ec82d3e569c539a` |
| 5 | `def` | [sourceRevision](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/sourcerevision--161e4bd16e86fd77ce8c3f29.md) | 52 | `declaration-track:161e4bd16e86fd77ce8c3f2992d170d7231541b30e1acc974056912b3aa60a87` |
| 6 | `def` | [normalizationId](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/normalizationid--943153ece178629d7d231bfb.md) | 56 | `declaration-track:943153ece178629d7d231bfbfd30a0f54a0bc3aa374f1199bb3cb17718a17b79` |
| 7 | `def` | [invalidationKey](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/invalidationkey--a734b32b459369a3ec254531.md) | 61 | `declaration-track:a734b32b459369a3ec254531eb667f76ab491315e019cf72ac0b3ec6f788dd22` |
| 8 | `def` | [firstProjection](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/firstprojection--6da29cac201b4762cb7889b6.md) | 66 | `declaration-track:6da29cac201b4762cb7889b6eed5421d9334a7f53358b4c4d0ebdb1eb9f045b3` |
| 9 | `def` | [coordinateOperator](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/coordinateoperator--170cfdc487ecd5ecd85e4874.md) | 74 | `declaration-track:170cfdc487ecd5ecd85e4874d2c35a529273bb7b7fb3edfd465c1dc97aad42c0` |
| 10 | `def` | [upperShift](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/uppershift--7e519441a59f266b321a0763.md) | 82 | `declaration-track:7e519441a59f266b321a076309d5cd7e3644a1c815de1e95faa06fff4d05120b` |
| 11 | `def` | [lowerShift](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/lowershift--1569c72540aee82d38030ec8.md) | 87 | `declaration-track:1569c72540aee82d38030ec82627ee1662af64f579db2ea479628cd069c5118e` |
| 12 | `theorem` | [upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/uppershift-mul-lowershift-ne-lowershift-mul-uppershift--3f83ef23a2b10b6f45477473.md) | 95 | `result-track:3f83ef23a2b10b6f45477473a283522d24dde9dbb034c6eb6567f4eb21d1389e` |
| 13 | `def` | [root](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/root--39ea08480cf4e23bd57b639a.md) | 108 | `declaration-track:39ea08480cf4e23bd57b639a190e72c048e6ada373de505b13d3dadb7805d317` |
| 14 | `def` | [binding](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/binding--6aac2ad8fc9329838c69a97b.md) | 121 | `declaration-track:6aac2ad8fc9329838c69a97be1606787a20b4982da0cab983975ccd2a382f91d` |
| 15 | `theorem` | [commutatorAt_eq_coordinateOperator](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/commutatorat-eq-coordinateoperator--9e115a955e13320bc51bec14.md) | 127 | `result-track:9e115a955e13320bc51bec14ae33ee59d51ca858d02a7975649d5f5235f8232d` |
| 16 | `theorem` | [heightAt_eq_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/heightat-eq-im--4626960b84be4a54a2503fe4.md) | 136 | `result-track:4626960b84be4a54a2503fe48d60dbe0a20971a53c586d8e34fdf4d729e2e104` |
| 17 | `theorem` | [coordinate_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/coordinate-injective--a6eab843d6b18a204fb06df9.md) | 145 | `result-track:a6eab843d6b18a204fb06df9cc7565e0a4b83fe989d191165a28343d4364235a` |
| 18 | `theorem` | [nontrivialZetaZero_heightAt_eq_im](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/nontrivialzetazero-heightat-eq-im--de8dfc17e28aaba0069249b4.md) | 154 | `result-track:de8dfc17e28aaba0069249b4368e5d862c643af2706530448d470c1b275c948d` |
| 19 | `def` | [RootStatement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/rootstatement--0d6f22fc3a2a3a0bd3de0e0a.md) | 160 | `declaration-track:0d6f22fc3a2a3a0bd3de0e0a3ac7b8bdd62c1d23e7de84d7ea3fb56478214306` |
| 20 | `theorem` | [rootStatement](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/rootstatement--f48bb22d0112f9fc8bc3e77d.md) | 165 | `result-track:f48bb22d0112f9fc8bc3e77da5fbb3790f1c2fcc797de5be0d4415c4e50b7729` |
| 21 | `theorem` | [rootStatement_of_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/rootstatement-of-rh--366518e187abbeb37b699f30.md) | 170 | `result-track:366518e187abbeb37b699f300ebf4bd97712975fa57613955fc82fc9b98bbbb4` |
| 22 | `def` | [localProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/localprofile--40a2869be88542806e9d5e1f.md) | 175 | `declaration-track:40a2869be88542806e9d5e1f988d3d54eb62f68bb5b32e639079c4f6bf5a071b` |
| 23 | `theorem` | [localProfile_status](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/localprofile-status--c04401f066575124628c8b75.md) | 178 | `result-track:c04401f066575124628c8b758a586d8f51ac9823a87d66981383fc0677be01c4` |
| 24 | `theorem` | [rootStatement_implies_rh_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/rootstatement-implies-rh-iff--5bdefec36816b3c23301236a.md) | 183 | `result-track:5bdefec36816b3c23301236adf7fa2659df5a4d0e053db4651d0eebbbd96ee37` |
| 25 | `def` | [chart](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/chart--d34b59fcecf62c9ae33f16b5.md) | 193 | `declaration-track:d34b59fcecf62c9ae33f16b5539c5b8bcca233e80134960211636873ce8f7be6` |
| 26 | `theorem` | [binding_matches_chart](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/binding-matches-chart--f510f042805401968f9b3156.md) | 208 | `result-track:f510f042805401968f9b31565fe2271393ebfbb67e3dc6d9fde9eb16086df94b` |
| 27 | `inductive` | [OperatorAxiomKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/operatoraxiomkind--1b70be16d318d7de7db3230a.md) | 213 | `declaration-track:1b70be16d318d7de7db3230afb6f4c6c2dfed26f33d85799f78ac83ca2fe069c` |
| 28 | `def` | [operatorAxiomDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/operatoraxiomdisposition--07193b840eee3b631289bb6d.md) | 226 | `declaration-track:07193b840eee3b631289bb6d5d5a643fc6a67c001d19685eee8ef969f9f6eed3` |
| 29 | `theorem` | [operatorAxiom_not_discharged](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/operatoraxiom-not-discharged--3cd3e6443bb0c15ba4c4b9f6.md) | 238 | `result-track:3cd3e6443bb0c15ba4c4b9f6f3db0dcfaa4a7799fee71b9c24daf9c95ddaf929` |
| 30 | `inductive` | [HeightComparisonKind](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/heightcomparisonkind--9b6e7974d9d81980fb99a02d.md) | 243 | `declaration-track:9b6e7974d9d81980fb99a02d1d9e08963d94a6336bfd48e964ea51d3b0a38c23` |
| 31 | `def` | [heightComparisonDisposition](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/heightcomparisondisposition--26d72870b8003a5f6dfc83c7.md) | 255 | `declaration-track:26d72870b8003a5f6dfc83c79963771a02db154e92cf32f7ddd5bf32ba329d4d` |
| 32 | `theorem` | [zetaSpectralImaginary_discharged](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/zetaspectralimaginary-discharged--daa36c42d6fb3705eb732743.md) | 264 | `result-track:daa36c42d6fb3705eb7327435a349b205577f57bd11828ba0a062ee2a973ae41` |
| 33 | `theorem` | [unresolved_height_comparison_not_discharged](../../../../../mathematics/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean/declarations/unresolved-height-comparison-not-discharged--fcc45c3fb63041e62ff11a3a.md) | 269 | `result-track:fcc45c3fb63041e62ff11a3ae4e5391e04142567022de8695a78012a35d6999c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
