# Verification target: GRWTSK.Algebra.LinearAlgebra.Pi.Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8c936afaa4ed9956dd3e053c850eb0fe1a47ac",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8c936afaa4ed9956dd3e053c850eb0fe1a47ac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearEquiv.finsuppUnique](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/linearequiv-finsuppunique--b05862fa4a941e5313bf4620.md) | 33 | `declaration-track:b05862fa4a941e5313bf4620dbb334c6c0029be9edbcb5bf0c3a517fe47a9829` |
| 2 | `theorem` | [LinearEquiv.finsuppUnique_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/linearequiv-finsuppunique-apply--2e826a4d27161c87d05ef8ef.md) | 41 | `result-track:2e826a4d27161c87d05ef8ef46927bff5bc19dc26e5a011162f1d8f15f7b995d` |
| 3 | `theorem` | [LinearEquiv.finsuppUnique_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/linearequiv-finsuppunique-symm-apply--931f1456b0c889210623ba08.md) | 48 | `result-track:931f1456b0c889210623ba08bfa8ef319c34b5f1b9bfc94cfad2e220348a303a` |
| 4 | `def` | [lcoeFun](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/lcoefun--8da0563e71b48a5cd88ca3f4.md) | 64 | `declaration-track:8da0563e71b48a5cd88ca3f4a5d8551f1eeb1da9fff11f1f37ee47ac494544b1` |
| 5 | `def` | [splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/splittingoffunonfintypesurjective--8526f564a34932dad6415fb2.md) | 88 | `declaration-track:8526f564a34932dad6415fb26d5d5ec8a5db176a1383d765483d4621648d0b75` |
| 6 | `theorem` | [splittingOfFunOnFintypeSurjective_splits](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/splittingoffunonfintypesurjective-splits--873c62b1f273b5ae7a3f4dde.md) | 93 | `result-track:873c62b1f273b5ae7a3f4ddec2148ed84647e2c5ffa4bb3ccbbf3f83bc922677` |
| 7 | `theorem` | [leftInverse_splittingOfFunOnFintypeSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/leftinverse-splittingoffunonfintypesurjective--a9b96c96d34a2c3dd8cd673e.md) | 102 | `result-track:a9b96c96d34a2c3dd8cd673ed14c3ecafcaf0b17c1d700b6b0e90cf338190b86` |
| 8 | `theorem` | [splittingOfFunOnFintypeSurjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Pi/Variant3c0bff5447c01f1dbe424d0614defb7d92be51adfa1b139ed13d8d68ec7b8afc.lean/declarations/splittingoffunonfintypesurjective-injective--665233bda789eb4f7710d797.md) | 106 | `result-track:665233bda789eb4f7710d7976d514b6a56324e805a232948025b87841a5c564e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
