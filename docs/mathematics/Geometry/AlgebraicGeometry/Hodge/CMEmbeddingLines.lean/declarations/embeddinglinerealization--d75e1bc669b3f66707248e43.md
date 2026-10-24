# EmbeddingLineRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29d28974b0af128674bb959357e3ff0c69023925f5b41e2a978a0ee21d25a282",
  "kind": "structure",
  "lexical_name": "EmbeddingLineRealization",
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
  "slug": "embeddinglinerealization--d75e1bc669b3f66707248e43",
  "source": {
    "blob": "a85d240717458e03ed3953a955709a9ae71e794f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d75e1bc669b3f66707248e4398575953bd7d7e847d2442249cd387eb61854f41",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29d28974b0af128674bb959357e3ff0c69023925f5b41e2a978a0ee21d25a282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EmbeddingLineRealization
    (G : Type*) (conj : G → G) (v : OddSignRow G conj) where
  Line : G → Type*
  line_nonempty : ∀ g, Nonempty (Line g)
  typeAt : G → WeightOneHodgeType
  typeAt_eq : ∀ g, typeAt g = typeOfSign (v.value g)

/-- A stronger realization interface in which each selected embedding line is an
actual one-dimensional linear subspace of a coefficient-space realization.

This still does not assert that the ambient vector space is a rational Hodge
structure, that the subspaces are eigenspaces for a CM-field action, or that
they form a complete direct-sum decomposition. Those are separate supplier
obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingLines.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85d240717458e03ed3953a955709a9ae71e794f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
