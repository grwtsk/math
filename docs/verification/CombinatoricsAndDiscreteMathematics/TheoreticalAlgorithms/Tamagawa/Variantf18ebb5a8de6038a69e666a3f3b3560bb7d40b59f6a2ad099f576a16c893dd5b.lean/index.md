# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tamagawa.Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d378dc24d02339238f3aa41976dda055b990019",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d378dc24d02339238f3aa41976dda055b990019`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalTamagawaComponentGroupData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/localtamagawacomponentgroupdata--51e254a13367a4c3e7af45f4.md) | 34 | `declaration-track:51e254a13367a4c3e7af45f4404405ffe59bb4f192e6d461de96a10e842577b7` |
| 2 | `structure` | [LocalTamagawaFactorCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/localtamagawafactorcertificate--886acd7abade9d8a0a4d0d45.md) | 70 | `declaration-track:886acd7abade9d8a0a4d0d4529b05f33cf178d37a634e81f321794c829567c4e` |
| 3 | `def` | [LocalTamagawaFactorCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/localtamagawafactorcertificate-certifiedforbsd--a1b7aa0e67b235ef2f3a8369.md) | 94 | `declaration-track:a1b7aa0e67b235ef2f3a8369fbf5acc2393a96bfc56f591749423601c739d2cf` |
| 4 | `theorem` | [LocalTamagawaFactorCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/localtamagawafactorcertificate-certifiedforbsd-of-fields--107a779ad7695aa7bc01c364.md) | 112 | `result-track:107a779ad7695aa7bc01c364b0b9e2ef84de42026bd63ed45e7b9bf829594711` |
| 5 | `structure` | [TamagawaProductCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/tamagawaproductcertificate--6aa625fb3b50a9bf41c8e649.md) | 147 | `declaration-track:6aa625fb3b50a9bf41c8e649fab81df610fc3ff21307011abaebaa46b272b07c` |
| 6 | `def` | [TamagawaProductCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/tamagawaproductcertificate-certifiedforbsd--8397e55ecd4276292cc58a0d.md) | 171 | `declaration-track:8397e55ecd4276292cc58a0dbf5bb96def2bb8f130c21f7685d7563fac64de61` |
| 7 | `theorem` | [TamagawaProductCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variantf18ebb5a8de6038a69e666a3f3b3560bb7d40b59f6a2ad099f576a16c893dd5b.lean/declarations/tamagawaproductcertificate-certifiedforbsd-of-fields--3d0ed122e23fdb32a4a59136.md) | 189 | `result-track:3d0ed122e23fdb32a4a591360a924e7be4d6cf40343cc86e55193c832598eb69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
