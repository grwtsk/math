# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Damping.Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cddd967b56c80d1448d72394775ca72c5230c63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cddd967b56c80d1448d72394775ca72c5230c63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.PeriodicOrbit` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DampingLaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/dampinglaw--de5ee5ae773f57188c4fbcc6.md) | 20 | `declaration-track:de5ee5ae773f57188c4fbcc63384337962d6431a15e9c10b13feca367a5d124a` |
| 2 | `def` | [dampedMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/dampedmap--d538a4e9e7d6ea999d5c9201.md) | 25 | `declaration-track:d538a4e9e7d6ea999d5c92016c1688f8926132f3f2bf5cc1ec1ec2254d359217` |
| 3 | `theorem` | [damping_preserves_fixed_points](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/damping-preserves-fixed-points--b76dae1c1bda62109cb3a964.md) | 32 | `result-track:b76dae1c1bda62109cb3a964e1bed3c8d9a048e2d74c677369fe9cc3c27a1390` |
| 4 | `structure` | [DampingAdmissionCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/dampingadmissioncertificate--ad6c8f0fca343bf178f2bf68.md) | 48 | `declaration-track:ad6c8f0fca343bf178f2bf6875ac050d882cf44597bbbcc7d2d9822bd83179cf` |
| 5 | `structure` | [AdmittedDamping](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/admitteddamping--b9584a84ce716341a99f7f0c.md) | 62 | `declaration-track:b9584a84ce716341a99f7f0c6c00a444174fd964b43508dc08f3e1e797f2795d` |
| 6 | `theorem` | [admitted_damping_has_separate_contractivity_evidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/admitted-damping-has-separate-contractivity-evidence--55ca6538659a9e59b4a110c7.md) | 79 | `result-track:55ca6538659a9e59b4a110c75f3c29cebecdf54268f36c5ccafe9e6bb82a5079` |
| 7 | `theorem` | [admitted_damping_requires_owner_reference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Damping/Variantbdbf0ee1573cc6ded6ba31b5062ce0f9b889106d2fcdca3e54e7f1f36a84cf0c.lean/declarations/admitted-damping-requires-owner-reference--5fe408477b3d185019567070.md) | 90 | `result-track:5fe408477b3d185019567070a32ba5795c6a99065bb2cf70a432cc0ad46f86e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
