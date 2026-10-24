# ThreeLispStyleReflectionProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68c77585bc6298bf6d8d688c05f53aa1b309a1a432f24a9a0af124cb1c904d44",
  "kind": "structure",
  "lexical_name": "ThreeLispStyleReflectionProfile",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "threelispstylereflectionprofile--d5baede6d98896e81783bde3",
  "source": {
    "blob": "c1a8b614abe05adbaa4806538bf401a968bfec09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 449,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5baede6d98896e81783bde3a3f8dfb9c341a43bc561d79ddd8456d183e6f71c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68c77585bc6298bf6d8d688c05f53aa1b309a1a432f24a9a0af124cb1c904d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThreeLispStyleReflectionProfile
    (Layer : Nat → Type u) (usesDefaultEvaluator : Nat → Prop) where
  tower : ReflectiveEvaluatorTower Layer
  finiteSupport : FiniteMetaSupportCertificate usesDefaultEvaluator
  executionBound : ReificationProfile
  supportWithinExecutionBound :
    finiteSupport.highestActivatedLevel ≤ executionBound.maximumLevel
  literalThreeLispEquivalenceClaimed : Bool
  unrestrictedSelfModificationClaimed : Bool

namespace ThreeLispStyleReflectionProfile

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReflectiveAgents/Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1a8b614abe05adbaa4806538bf401a968bfec09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
