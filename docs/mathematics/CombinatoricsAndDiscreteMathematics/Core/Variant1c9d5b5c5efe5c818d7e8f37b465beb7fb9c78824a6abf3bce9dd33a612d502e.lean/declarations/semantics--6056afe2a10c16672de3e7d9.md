# Semantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db7219d10c82f4562c524cdaf657c06a3eae70cabea9b01473ad2066a6bf512a",
  "kind": "structure",
  "lexical_name": "Semantics",
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
  "slug": "semantics--6056afe2a10c16672de3e7d9",
  "source": {
    "blob": "4c88a4a98e2fdf1b43a40722792d29e2267e255d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6056afe2a10c16672de3e7d918370fd96f0f89b3a7ad661a7322b7aab2e03783",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db7219d10c82f4562c524cdaf657c06a3eae70cabea9b01473ad2066a6bf512a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Semantics
    (Partial : Type uPartial)
    (Full : Type uFull)
    (Constraint : Type uConstraint) where
  refines :
    Partial → Partial → Prop
  extendsFull :
    Partial → Full → Prop
  satisfies :
    Full → Constraint → Prop
  refinement_sound :
    ∀ {parent child completion},
      refines parent child →
      extendsFull child completion →
      extendsFull parent completion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant1c9d5b5c5efe5c818d7e8f37b465beb7fb9c78824a6abf3bce9dd33a612d502e.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c88a4a98e2fdf1b43a40722792d29e2267e255d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
