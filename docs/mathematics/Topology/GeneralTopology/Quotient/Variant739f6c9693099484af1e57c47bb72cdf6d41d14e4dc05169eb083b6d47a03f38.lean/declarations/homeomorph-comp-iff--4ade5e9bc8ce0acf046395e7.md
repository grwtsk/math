# homeomorph_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6a01597-bee6-914f-7b96-5cb2602d8552",
  "kind": "theorem",
  "lexical_name": "homeomorph_comp_iff",
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
  "slug": "homeomorph-comp-iff--4ade5e9bc8ce0acf046395e7",
  "source": {
    "blob": "3348d2a4068c7336738a5f5144d377e4ea0847dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 99,
    "path": "GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ade5e9bc8ce0acf046395e7774164d50154215582e36a845965c2f93d26c1ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6a01597-bee6-914f-7b96-5cb2602d8552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := simp)] theorem homeomorph_comp_iff {Y} [TopologicalSpace Y]
    (φ : X ≃ₜ Y) : IsQuotientCoveringMap (φ ∘ f) G ↔ IsQuotientCoveringMap f G where
  mp h := by convert! h.homeomorph_comp φ.symm; ext; simp
  mpr h := h.homeomorph_comp φ

/-- Fibers of a quotient covering map by a group G is a G-torsor. -/
@[to_additive /-- Fibers of a quotient covering map by an additive group G is a G-torsor. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quotient/Variant739f6c9693099484af1e57c47bb72cdf6d41d14e4dc05169eb083b6d47a03f38.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3348d2a4068c7336738a5f5144d377e4ea0847dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
