# Verification target: GRWTSK.Topology.GeneralTopology.LiminfLimsup.Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c99739beb2be7817e5c6856f1179b913e699bc3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c99739beb2be7817e5c6856f1179b913e699bc3`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.DensityTheorem` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le-aux--259f7842e480d64a0db01620.md) | 40 | `result-track:259f7842e480d64a0db016209364696f97ddefdb6364838466defe4df3f8e79e` |
| 2 | `theorem` | [blimsup_cthickening_ae_le_of_eventually_mul_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-cthickening-ae-le-of-eventually-mul-le--1b347fe8042b1744034fee2c.md) | 155 | `result-track:1b347fe8042b1744034fee2c0ed240b9e9db89a660cce6c8918bfd6736c1e82d` |
| 3 | `theorem` | [blimsup_cthickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-cthickening-mul-ae-eq--fa930c09f3aecdc983afba2b.md) | 190 | `result-track:fa930c09f3aecdc983afba2b5e7d11c0914fbd9ae87cf40b46d2d10450ee3211` |
| 4 | `theorem` | [blimsup_cthickening_ae_eq_blimsup_thickening](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-cthickening-ae-eq-blimsup-thickening--a20cce9f3d21200d7529fe4b.md) | 228 | `result-track:a20cce9f3d21200d7529fe4b9eb701cac9f284bd5f78735cc12332f689a20628` |
| 5 | `theorem` | [blimsup_thickening_mul_ae_eq_aux](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-thickening-mul-ae-eq-aux--52f87bfe7f1064a74efdd4a5.md) | 242 | `result-track:52f87bfe7f1064a74efdd4a5e3f95dd25ddcf163141701836e971d4210ce01e0` |
| 6 | `theorem` | [blimsup_thickening_mul_ae_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variant7fee2100886583bbf94f2901e14162bd19fd9cee23914f1544f35c71415dacc2.lean/declarations/blimsup-thickening-mul-ae-eq--b60f733ec4124c8c071ccb9c.md) | 265 | `result-track:b60f733ec4124c8c071ccb9ca256e46be944e27ff0eaeacdafc441d9b9c349ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
