# Verification target: GRWTSK.Algebra.UniversalAlgebra.Rat.Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95857156e9a5439b0212a986aa9261c58db9206d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95857156e9a5439b0212a986aa9261c58db9206d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.End` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_rat_algebraMap](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/map-rat-algebramap--e30c3616e215b7f49e034242.md) | 24 | `result-track:e30c3616e215b7f49e0342421626c7966a567f77aba8f17ad0a78ca76c0f4ed2` |
| 2 | `lemma` | [cast_smul_eq_nnqsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/cast-smul-eq-nnqsmul--6d1af62b3d03502c6efc4d01.md) | 38 | `result-track:6d1af62b3d03502c6efc4d014745110c284148870a9a2623e35fd9212ace8f4e` |
| 3 | `instance` | [_root_.DivisionSemiring.toNNRatAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/root-divisionsemiring-tonnratalgebra--61fe7508da35c9d201f4210e.md) | 50 | `declaration-track:61fe7508da35c9d201f4210e9d69bae66715b4561d838715e91b1d9d865a7b7d` |
| 4 | `instance` | [_root_.RingHomClass.toLinearMapClassNNRat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/root-ringhomclass-tolinearmapclassnnrat--7c772f704245dd8f571be77e.md) | 55 | `declaration-track:7c772f704245dd8f571be77e69d807e0b78568259645a78d81f2605d909657f3` |
| 5 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/instsmulcommclass--d83ea8b0aca339273d56aa08.md) | 61 | `declaration-track:d83ea8b0aca339273d56aa08eee7922dd182b36b636f1996807c9ce957897324` |
| 6 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/instsmulcommclass--108e1b681f9740e1ae561ab8.md) | 64 | `declaration-track:108e1b681f9740e1ae561ab8526814acaa60110909c59feb0a1071abe7d8889f` |
| 7 | `lemma` | [cast_smul_eq_qsmul](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/cast-smul-eq-qsmul--9e9a9a2a8123d7fc4ceac841.md) | 78 | `result-track:9e9a9a2a8123d7fc4ceac84180e0d3d895d8967d7ef7b2a84119ae3da6a5250b` |
| 8 | `instance` | [_root_.DivisionRing.toRatAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/root-divisionring-toratalgebra--5d547b195af7ccb08a2e20f2.md) | 90 | `declaration-track:5d547b195af7ccb08a2e20f2a3f0b14558da35201b5af96bb1ed35ba7b7ec5e5` |
| 9 | `instance` | [_root_.RingHomClass.toLinearMapClassRat](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/root-ringhomclass-tolinearmapclassrat--021ffd9f56349b63c99abd69.md) | 95 | `declaration-track:021ffd9f56349b63c99abd69da620005af0cc85655b322559cc0c056cac5df14` |
| 10 | `instance` | [instSMulCommClass](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/instsmulcommclass--9e68f18b5a6cf6c63299b9f3.md) | 101 | `declaration-track:9e68f18b5a6cf6c63299b9f35f7b42db8184defdb07af169a04ad6f8dddd0e4a` |
| 11 | `instance` | [instSMulCommClass'](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/instsmulcommclass--ecdeb819b15ac21a864380a6.md) | 104 | `declaration-track:ecdeb819b15ac21a864380a6117ceffe1773e433bfeb71cda4d90da82bae9ba4` |
| 12 | `instance` | [algebra_rat_subsingleton](../../../../../mathematics/Algebra/UniversalAlgebra/Rat/Variant8cb7044eec70c106a799d4c3ba32fd0e71c56ef9b5233d937019101d302c3366.lean/declarations/algebra-rat-subsingleton--21e3ab12cc2cfa4596ae18b0.md) | 109 | `declaration-track:21e3ab12cc2cfa4596ae18b0743fccbb573284804645bc4a276592c8b12df401` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
