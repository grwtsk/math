# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heights.Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c85fbedaec7ef7743f8b2ff01de653314cd1bfd1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c85fbedaec7ef7743f8b2ff01de653314cd1bfd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean.json)

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
| 1 | `structure` | [NeronTateHeightPairingData](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/declarations/nerontateheightpairingdata--501d010d1fad3221692c8c12.md) | 35 | `declaration-track:501d010d1fad3221692c8c12f6ee35b54bd536e7c754de6767fcf0efc28f657c` |
| 2 | `structure` | [NeronTateHeightPairingCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/declarations/nerontateheightpairingcertificate--3807d2e02e108a2cfd9a9c75.md) | 59 | `declaration-track:3807d2e02e108a2cfd9a9c7521514f91871939bbaebba9f1a08d6ff5a41c6a48` |
| 3 | `def` | [NeronTateHeightPairingCertificate.certifiedForBSD](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/declarations/nerontateheightpairingcertificate-certifiedforbsd--15e1ede6e84a75e46ea9dd20.md) | 80 | `declaration-track:15e1ede6e84a75e46ea9dd20487f931e0e3a6c676b37b54792b126e59db060db` |
| 4 | `theorem` | [NeronTateHeightPairingCertificate.certifiedForBSD_of_fields](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Heights/Variant27fe0365d3b669394172826c9236ead93f39787107c6cc2ca402bb759965e96a.lean/declarations/nerontateheightpairingcertificate-certifiedforbsd-of-fields--2fa1176c3912d67bda8f337d.md) | 93 | `result-track:2fa1176c3912d67bda8f337db522b94efd0c1f24b889a0f72ef8d9716d543705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
