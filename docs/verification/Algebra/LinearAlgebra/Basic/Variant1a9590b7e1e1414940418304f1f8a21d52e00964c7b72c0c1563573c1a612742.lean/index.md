# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d76a09009773293cb85824057e168655f0606be",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d76a09009773293cb85824057e168655f0606be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.TrivSqZeroExt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/rel--a386b8c14fa62c15b16afa2b.md) | 49 | `declaration-track:a386b8c14fa62c15b16afa2b55539c6272d5db8b04278803e870bab8d6265d35` |
| 2 | `def` | [TensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/tensoralgebra--09ef9401835d1898c405ccf7.md) | 59 | `declaration-track:09ef9401835d1898c405ccf784ba1e21c962fbca579b87d972b68c2c10b8f9b7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--757ea29ec077cf4bd5e94e4f.md) | 64 | `declaration-track:757ea29ec077cf4bd5e94e4fcbd9ea6170ed549cb90258c609ab3d513ad9011f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--b992bfb893153f488728af56.md) | 65 | `declaration-track:b992bfb893153f488728af5680c6aa79823195390684b40fa714fada484f5e3e` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instalgebra--5cfbe7b404efaab83f8cf254.md) | 69 | `declaration-track:5cfbe7b404efaab83f8cf25425617acae1489081e44e5533626cb42fb26d5787` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/example--7ecb887fe22b7814f80ce3b3.md) | 77 | `declaration-track:7ecb887fe22b7814f80ce3b3bc5c34b874f4a14e25f1a132c0895b023aeda18c` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--0359fbbd70eaf0003e5b2d43.md) | 79 | `declaration-track:0359fbbd70eaf0003e5b2d43e1582f15a785afbf574ec25b47b2cb8874079940` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--681668680c93114eafed263f.md) | 85 | `declaration-track:681668680c93114eafed263f30746992aa0474c53a55a8d585e23bf7edbddfea` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--41457caf076228c82231f07c.md) | 93 | `declaration-track:41457caf076228c82231f07c2e5d5e1bff7197e70b25223f7ac12e7eac7d953e` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/example--caae60ed1d5634b5fe0b4d93.md) | 99 | `declaration-track:caae60ed1d5634b5fe0b4d93d61ace13afacdff74d77d2f46a7b5c0d2a826936` |
| 11 | `theorem` | [ringQuot_mkAlgHom_freeAlgebra_ι_eq_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/ringquot-mkalghom-freealgebra-eq--ef6e278169d162b9fa6c02e9.md) | 114 | `result-track:ef6e278169d162b9fa6c02e913ac1641dfdddb1b5441a1a53d6ef924f89487aa` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/lift--5c103b157e8e6390aca3a2ef.md) | 123 | `declaration-track:5c103b157e8e6390aca3a2ef30748e358be62caea33fb5b6e6b707213a3b478c` |
| 13 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/comp-lift--e759b6a8301ae904cc64cc41.md) | 146 | `result-track:e759b6a8301ae904cc64cc41f050b16e71df90a61bb253aea133ccf122353638` |
| 14 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/lift-apply--d01a07e50d1f527eb0babf93.md) | 151 | `result-track:d01a07e50d1f527eb0babf93e7330f423f8334bfbf2067b174f3d00153c71d0f` |
| 15 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/lift-unique--8c4be64b8fb8e993c8cff4e2.md) | 157 | `result-track:8c4be64b8fb8e993c8cff4e28db9d259fa0a5e188f275aeabf403b61087fc952` |
| 16 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/lift-comp--0726f6dc453ce86eb39acea9.md) | 166 | `result-track:0726f6dc453ce86eb39acea9ce17cf993e4feef91a0ff49aee35a0fa58be7c21` |
| 17 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/hom-ext--f002a729e7fdcd1073be66d7.md) | 173 | `result-track:f002a729e7fdcd1073be66d74dccb19c45b05004acf9c1e54a8820c3f8396ae6` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/induction--b1bbce69a52675601055d8fc.md) | 183 | `result-track:b1bbce69a52675601055d8fc7721195f022db13f5cbf4e7250fbc8338ceb2f6b` |
| 19 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/algebramapinv--7d7b990acac8c1a757ef32d8.md) | 206 | `declaration-track:7d7b990acac8c1a757ef32d8663783898c534e1e366fdd421f67174f793008c9` |
| 20 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/algebramap-leftinverse--53916b90eaa38fbe32c53b73.md) | 211 | `result-track:53916b90eaa38fbe32c53b734dcfc4158a6fe786db8e7e494c9a4f726129827f` |
| 21 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/algebramap-inj--384048755ab96c7fd9c38fbb.md) | 216 | `result-track:384048755ab96c7fd9c38fbb24dd04f7cecb937e5a00224a288f1edfd38e770d` |
| 22 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/algebramap-eq-zero-iff--efe45e828278bc8cb4c5f7fe.md) | 221 | `result-track:efe45e828278bc8cb4c5f7fe5c335fd9ce0242f7cba6f3b39a1dd8c280e5fc52` |
| 23 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/algebramap-eq-one-iff--a8a1bfc14b24df6e8bc3f9e0.md) | 225 | `result-track:a8a1bfc14b24df6e8bc3f9e088a0aa6049a0c62b2542966eb7dbfc68bcf23877` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/instance--b689014b40b86c60289ebd08.md) | 229 | `declaration-track:b689014b40b86c60289ebd08a8e79b140ee3edf9d54c3b27f817684f2a9456ce` |
| 25 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/totrivsqzeroext--d6d1ffed5c1244d00d9d9751.md) | 236 | `declaration-track:d6d1ffed5c1244d00d9d97516d05c54c7d5e11342e6758a3285cc0f854501789` |
| 26 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/totrivsqzeroext--153b6fed2b588ae7f7d85d90.md) | 241 | `result-track:153b6fed2b588ae7f7d85d90fb083a428dd365bb0464664afcffb5a51eec514c` |
| 27 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/inv--dbcb69ecf1ccd825912cb99d.md) | 249 | `declaration-track:dbcb69ecf1ccd825912cb99d0d2e2f2f3056ce167f7f987ce7d526d62889c4e8` |
| 28 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/leftinverse--7fc45b829a28ca8c029aa4c4.md) | 254 | `result-track:7fc45b829a28ca8c029aa4c49ab6bb4a0cf25474fb675bfad22833c8d1ef148a` |
| 29 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/inj--d911cc8b7920c1c8e89ff912.md) | 260 | `result-track:d911cc8b7920c1c8e89ff9123cd96e4ba1372736a87d992bd62bfa8be393c915` |
| 30 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/eq-zero-iff--6212a6eced02f07ab413b412.md) | 264 | `result-track:6212a6eced02f07ab413b4121d173934587207febc103f89b14dc91d8d15ce3e` |
| 31 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/eq-algebramap-iff--4b4ce8b5951bba24f9acc354.md) | 269 | `result-track:4b4ce8b5951bba24f9acc354ce80f915901ec3ab8ef3bb6b127e3b811c8b7891` |
| 32 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/ne-one--2a73b6542cd0615bf4624b72.md) | 281 | `result-track:2a73b6542cd0615bf4624b7233d77f60dab716cd30e08a94522c27670fd183be` |
| 33 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/range-disjoint-one--e141373fbf6e7d7d6f4e76d0.md) | 286 | `result-track:e141373fbf6e7d7d6f4e76d09eb94f1d13c3c7e6c507316f6712ca61ecaa2da3` |
| 34 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/tprod--486f48c5518157472eb31bd5.md) | 299 | `declaration-track:486f48c5518157472eb31bd5702040085b3e7426343e1f8a859bd4724a27f8bc` |
| 35 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/tprod-apply--f59356729cb5da8eb3f1a780.md) | 303 | `result-track:f59356729cb5da8eb3f1a78026bbd991045d73685b6460a99666e3fc9de8cc09` |
| 36 | `def` | [toTensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/totensor--9f0371f71231142a80e3b32f.md) | 316 | `declaration-track:9f0371f71231142a80e3b32f4f9cb7bfedde141e2574e67a83099f9eb0e09afe` |
| 37 | `theorem` | [toTensor_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant1a9590b7e1e1414940418304f1f8a21d52e00964c7b72c0c1563573c1a612742.lean/declarations/totensor--286555f6b8d7eb1591cab53b.md) | 320 | `result-track:286555f6b8d7eb1591cab53b637957b119bf49e8a7df7e12686cc3874ec4da50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
