# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tamagawa.Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a50072bbd56718f7c43ebb84536a9a503302b7a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a50072bbd56718f7c43ebb84536a9a503302b7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Statement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalTamagawaComponentGroupData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/localtamagawacomponentgroupdata--8e1cddbfbe8b05421c066d80.md) | 42 | `declaration-track:8e1cddbfbe8b05421c066d803748ba63cec799cb951e2b78599023f9e5779a67` |
| 2 | `structure` | [LocalTamagawaFactorCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/localtamagawafactorcertificate--16946b8c81528f7f3850a196.md) | 78 | `declaration-track:16946b8c81528f7f3850a196f7e851a5acf9736818a3e7788c94d896ad03f484` |
| 3 | `def` | [LocalTamagawaFactorCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/localtamagawafactorcertificate-certifiedforbsd--d1941cfa078f800336c63776.md) | 102 | `declaration-track:d1941cfa078f800336c63776eb6b8695a297f24f422d097768680d7b3484a4a5` |
| 4 | `theorem` | [LocalTamagawaFactorCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/localtamagawafactorcertificate-certifiedforbsd-of-fields--0030f3f14726758eaef9e644.md) | 120 | `result-track:0030f3f14726758eaef9e6445905ac71cc4aa4ba234d7edcc7b40dec8289eddf` |
| 5 | `structure` | [TamagawaProductCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/tamagawaproductcertificate--a61fbd9cdc801baa0bb08037.md) | 155 | `declaration-track:a61fbd9cdc801baa0bb08037943c57e37b8e850358e29486d1e145326afc71db` |
| 6 | `def` | [TamagawaProductCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/tamagawaproductcertificate-certifiedforbsd--3a1361aaeec254c000f7f7e1.md) | 179 | `declaration-track:3a1361aaeec254c000f7f7e1080d4c4f64c7265d15f70fbb67887e98910755c7` |
| 7 | `theorem` | [TamagawaProductCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tamagawa/Variant618d936315d23c3e5a0836f2892e23a743e2dcf007da028101c00b6a42c0978e.lean/declarations/tamagawaproductcertificate-certifiedforbsd-of-fields--a954bb44b8150703c6a66fd4.md) | 197 | `result-track:a954bb44b8150703c6a66fd4afd3baae281cb83b316d4e0585043c9db6786d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
