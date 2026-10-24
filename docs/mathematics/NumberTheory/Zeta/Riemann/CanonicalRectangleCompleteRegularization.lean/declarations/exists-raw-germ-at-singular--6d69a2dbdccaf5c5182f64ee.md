# exists_raw_germ_at_singular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:612de0eb-6bdc-a721-eb34-cf8a1d4b6118",
  "kind": "theorem",
  "lexical_name": "exists_raw_germ_at_singular",
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
  "slug": "exists-raw-germ-at-singular--6d69a2dbdccaf5c5182f64ee",
  "source": {
    "blob": "7bf0a4821d237afe3e26ecf300750de354860ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 270,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d69a2dbdccaf5c5182f64eea7a3aa9dfa21b2d9bea6e32105f3914ce3adae44",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:612de0eb-6bdc-a721-eb34-cf8a1d4b6118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_raw_germ_at_singular
    (N : ℕ) (a : ℂ) (member : a ∈ singularHead N) :
    ∃ G : ℂ → ℂ, AnalyticAt ℂ G a ∧
      rawRectangleRegularPart N =ᶠ[𝓝[≠] a] G := by
  classical
  rcases Finset.mem_insert.mp member with rfl | member
  · exact exists_pole_raw_germ N
  rcases Finset.mem_union.mp member with member | member
  · obtain ⟨root, rootMember, rfl⟩ := Finset.mem_image.mp member
    exact exists_nontrivial_raw_germ N root rootMember
  · obtain ⟨k, kMember, rfl⟩ := Finset.mem_image.mp member
    exact exists_trivial_raw_germ N k kMember

/-- Noncomputably choose one source-derived local raw-remainder germ at each
singular point. No family of zeros is newly selected: `singularHead` is already
the maintained complete finite source set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCompleteRegularization.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bf0a4821d237afe3e26ecf300750de354860ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
