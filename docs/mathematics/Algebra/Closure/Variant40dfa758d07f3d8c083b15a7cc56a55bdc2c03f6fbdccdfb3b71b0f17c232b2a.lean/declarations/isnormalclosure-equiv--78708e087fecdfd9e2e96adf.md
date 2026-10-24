# IsNormalClosure.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18a5b4657d8b2732f593f181722655cafd9818243c89be421f25506145f6f5e9",
  "kind": "def",
  "lexical_name": "IsNormalClosure.equiv",
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
  "slug": "isnormalclosure-equiv--78708e087fecdfd9e2e96adf",
  "source": {
    "blob": "681d6352d9d63e87784f65d5786913f0b3b8dd00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 128,
    "path": "GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78708e087fecdfd9e2e96adf165e50a306978f20f37cf62d2bfb5b069c13ea0d",
  "verification": {
    "reference": "docs/verification/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18a5b4657d8b2732f593f181722655cafd9818243c89be421f25506145f6f5e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsNormalClosure.equiv {L'} [Field L'] [Algebra F L']
    [h : IsNormalClosure F K L] [h' : IsNormalClosure F K L'] : L ≃ₐ[F] L' :=
  have := h.normal
  AlgEquiv.ofBijective _ <| And.left <|
    Normal.toIsAlgebraic.algHom_bijective₂
      (IsNormalClosure.lift fun _ : K ↦ h'.splits _)
      (IsNormalClosure.lift fun _ : K ↦ h.splits _)

variable (F K L)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681d6352d9d63e87784f65d5786913f0b3b8dd00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
