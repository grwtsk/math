# UsableRouteRegistry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f4efe3a54be8b0289a2c5d22b97bf1e411052bc9e6b4a5790a2e5b0c2beb4d8",
  "kind": "structure",
  "lexical_name": "UsableRouteRegistry",
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
  "slug": "usablerouteregistry--3cf234e9babfb1690f971cd5",
  "source": {
    "blob": "dee9ed824386954f4f163a50c59354da628bbfea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CertifiedRoute/Variant74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cf234e9babfb1690f971cd54013d764a0f920e0766c2ae00f56a2367a599104",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CertifiedRoute/Variant74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f4efe3a54be8b0289a2c5d22b97bf1e411052bc9e6b4a5790a2e5b0c2beb4d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UsableRouteRegistry
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (Statement : Obligation → Prop)
    (snapshot : ProjectionSnapshot) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  routes : List (CertifiedRoute Obligation Certificate Statement snapshot)
  usable :
    CertifiedRoute Obligation Certificate Statement snapshot → Prop
  usable_decidable :
    DecidablePred usable
  usable_registered :
    ∀ route, usable route → route ∈ routes
  route_head_current :
    ∀ route, route ∈ routes →
      route.activeSnapshot.head = activeSnapshot.head

attribute [instance] UsableRouteRegistry.usable_decidable

end Mathematics.ProofStrategy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CertifiedRoute/Variant74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CertifiedRoute/Variant74ffd663e593a1c2ea5004525436037b844f8b38dc4e8cefde034a0a47e2ce51.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dee9ed824386954f4f163a50c59354da628bbfea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
