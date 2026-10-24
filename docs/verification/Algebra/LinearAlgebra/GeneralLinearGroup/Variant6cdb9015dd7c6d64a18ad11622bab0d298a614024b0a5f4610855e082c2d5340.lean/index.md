# Verification target: GRWTSK.Algebra.LinearAlgebra.GeneralLinearGroup.Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "289bcb15903b71e3ee4dfbfc18b2f9b7cff25c5e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `289bcb15903b71e3ee4dfbfc18b2f9b7cff25c5e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/generallineargroup--bf1cfe9213c233e90f172967.md) | 29 | `declaration-track:bf1cfe9213c233e90f1729670f4ecc57b19977ce5bde372400b06d5844607230` |
| 2 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/tolinearequiv--b7e06ee74fd7d83bed1e31bb.md) | 37 | `declaration-track:b7e06ee74fd7d83bed1e31bba9cbdee97a43f23ccb3bfafe0ecb3fa067907949` |
| 3 | `def` | [ofLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/oflinearequiv--eaba165c9b3bde57a0f08a1a.md) | 44 | `declaration-track:eaba165c9b3bde57a0f08a1a5f18d8dee89cdeaf0696479ed4b9c7321c194b3d` |
| 4 | `def` | [generalLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/generallinearequiv--f357ca06905cc4e65aff1c0e.md) | 54 | `declaration-track:f357ca06905cc4e65aff1c0ebea510028137583ed2252307a95dccf1298b452d` |
| 5 | `theorem` | [generalLinearEquiv_to_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/generallinearequiv-to-linearmap--6e114ed6659de56128bbd652.md) | 62 | `result-track:6e114ed6659de56128bbd65209eec7da5d01225ca8ae1998ecad7e13bfac03dc` |
| 6 | `theorem` | [coeFn_generalLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/GeneralLinearGroup/Variant6cdb9015dd7c6d64a18ad11622bab0d298a614024b0a5f4610855e082c2d5340.lean/declarations/coefn-generallinearequiv--2ab1ac383fd5b1bdff100398.md) | 66 | `result-track:2ab1ac383fd5b1bdff100398e6b4e942452b5121c8c02a4123d2a64e121de0f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
