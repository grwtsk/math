# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FunctionField.Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1693e86cdeed0b96333abda923a718394744719a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1693e86cdeed0b96333abda923a718394744719a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Properties` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Scheme.functionField](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/scheme-functionfield--4fd951237dd089aab167278b.md) | 33 | `declaration-track:4fd951237dd089aab167278bc407e89015b73373ad137b6778f6b301e4c2b051` |
| 2 | `abbrev` | [Scheme.germToFunctionField](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/scheme-germtofunctionfield--a44e3f2f85d83d1156a1ee17.md) | 37 | `declaration-track:a44e3f2f85d83d1156a1ee17ac7c20a94cf40776eb53a6db8425398c710c2d1b` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--8983b82f86a3952c8f9cc04e.md) | 43 | `declaration-track:8983b82f86a3952c8f9cc04e7f199111d456523c483b5339dffb4a2303df9773` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--1a21771ea94ad6476fe34720.md) | 47 | `declaration-track:1a21771ea94ad6476fe347200a548a5c451811f8b4f69cc9b489fa2b1dd0ac7b` |
| 5 | `theorem` | [germ_injective_of_isIntegral](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/germ-injective-of-isintegral--cab62548d54d30bc6c9ebfcd.md) | 62 | `result-track:cab62548d54d30bc6c9ebfcd355d4f8347461d56d85c3ddf6b67512406ec8a80` |
| 6 | `theorem` | [Scheme.germToFunctionField_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/scheme-germtofunctionfield-injective--21e00ae80239851518cd5b9d.md) | 72 | `result-track:21e00ae80239851518cd5b9d6e1574e285e97759e51d69ceab65d3704d89b27b` |
| 7 | `theorem` | [genericPoint_eq_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/genericpoint-eq-of-isopenimmersion--c6da689041c272730d97322b.md) | 76 | `result-track:c6da689041c272730d97322bf68c35dd272779ef6ef4f3330250ab8bcec91fcb` |
| 8 | `instance` | [stalkFunctionFieldAlgebra](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/stalkfunctionfieldalgebra--bb7f81c5fe98cbf9e2de11d4.md) | 88 | `declaration-track:bb7f81c5fe98cbf9e2de11d45ef07120de197eaad23639621ea4a46b7eaa9f27` |
| 9 | `instance` | [functionField_isScalarTower](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/functionfield-isscalartower--8d96d9c54bb824fdf67a3ee0.md) | 94 | `declaration-track:8d96d9c54bb824fdf67a3ee044e9227d0db80795db1461fa242279d988221dd2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--cfcc6b74d526d5665f921367.md) | 101 | `declaration-track:cfcc6b74d526d5665f921367187bb15970ee3404e259c33c29479f33cb87c595` |
| 11 | `theorem` | [genericPoint_eq_bot_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/genericpoint-eq-bot-of-affine--fd9f98d085804bcc1e2cf72d.md) | 107 | `result-track:fd9f98d085804bcc1e2cf72d04e1fa08f56a96c5c5b2df166a1db039e07fde9b` |
| 12 | `instance` | [functionField_isFractionRing_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/functionfield-isfractionring-of-affine--4e87b2ff67b980328bc0367a.md) | 115 | `declaration-track:4e87b2ff67b980328bc0367a78782556078dd54c1ce16b6f9d38d4c189f9f90a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--5f69fb86f19cd9d24d612e94.md) | 126 | `declaration-track:5f69fb86f19cd9d24d612e943d4efee11901e5f625518020168511e223815098` |
| 14 | `theorem` | [IsAffineOpen.primeIdealOf_genericPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/isaffineopen-primeidealof-genericpoint--25eab96715b25964a2e6c5ef.md) | 130 | `result-track:25eab96715b25964a2e6c5ef2933aeb39a6fdb5c6d55acb8b7adf5e21cfbbafa` |
| 15 | `theorem` | [functionField_isFractionRing_of_isAffineOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/functionfield-isfractionring-of-isaffineopen--35a6183cd5c358f848eb1d74.md) | 145 | `result-track:35a6183cd5c358f848eb1d746bf6e79dc6fa3a30f4e7d54e5d470eef7b61aa30` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--0f830613d8c1544a2e3895ba.md) | 158 | `declaration-track:0f830613d8c1544a2e3895ba1905618c0e772c02523eb343ec853501cf4796ad` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/FunctionField/Variant6b4158ee6384b3d563abe8c5dd615fe42d5ade2106213c598f418a5a0e101aac.lean/declarations/instance--d94658fb429f3acbcfae5e3e.md) | 161 | `declaration-track:d94658fb429f3acbcfae5e3eed85d9a4352b21c0d92a2b24663f01323d731dd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
