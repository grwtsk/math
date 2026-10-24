# InvertibleBridge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:260f78d6e1cbfba9c1b025d73f889e65f562a4b824eb605d2bd2c545dd9cd76d",
  "kind": "inductive",
  "lexical_name": "InvertibleBridge",
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
  "slug": "invertiblebridge--6d83615e190d4e1b5504bdcc",
  "source": {
    "blob": "587f6324971c126614a14de3290f949678351a7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d83615e190d4e1b5504bdcc405373fae0a371ad1308a5b07129f2f6f348f358",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:260f78d6e1cbfba9c1b025d73f889e65f562a4b824eb605d2bd2c545dd9cd76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive InvertibleBridge : Interface.{u} → Interface.{u} → Type (u + 1) where
  | definitionalEquality (I : Interface) : InvertibleBridge I I
  | provedEquality {I J : Interface} (proof : I = J) : InvertibleBridge I J
  | logicalEquivalence {P Q : Prop} (proof : P ↔ Q) :
      InvertibleBridge (.statement P) (.statement Q)
  | isomorphism {I J : Interface} (equiv : I.Carrier ≃ J.Carrier)
      (sourceRelation : I.Carrier → I.Carrier → Prop)
      (targetRelation : J.Carrier → J.Carrier → Prop)
      (preserves : ∀ x y, sourceRelation x y ↔ targetRelation (equiv x) (equiv y)) :
      InvertibleBridge I J
  | equivalence {I J : Interface} (equiv : I.Carrier ≃ J.Carrier) :
      InvertibleBridge I J

/-- Every invertible bridge supplies an actual carrier equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Atlas/Variant2fbc46e6f8175828a46ba87df285e4a347c9d4405dbace46835809422d946179.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587f6324971c126614a14de3290f949678351a7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
