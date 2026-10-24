# orthogonal_orthogonal_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65cf0b3b-8107-518a-48d2-7cedefdc33b3",
  "kind": "theorem",
  "lexical_name": "orthogonal_orthogonal_monotone",
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
  "slug": "orthogonal-orthogonal-monotone--19ab921ec644e175134c3849",
  "source": {
    "blob": "f6c39e690917950911c5072f5eb4cecdd652743e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 514,
    "path": "GRWTSK/Analysis/Orthogonal/Variant10341687e1a33ec31e17e7241d354ebadc332d1d17897302b89756a8184c0b5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19ab921ec644e175134c3849614117eb1c1210709cd3c9ef1228abced8c5539b",
  "verification": {
    "reference": "docs/verification/Analysis/Orthogonal/Variant10341687e1a33ec31e17e7241d354ebadc332d1d17897302b89756a8184c0b5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65cf0b3b-8107-518a-48d2-7cedefdc33b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orthogonal_orthogonal_monotone {K₁ K₂ : ClosedSubmodule 𝕜 E} (h : K₁ ≤ K₂) : K₁ᗮᗮ ≤ K₂ᗮᗮ :=
  orthogonal_le (orthogonal_le h)

/-- The inf of two orthogonal subspaces equals the subspace orthogonal
to the sup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Orthogonal/Variant10341687e1a33ec31e17e7241d354ebadc332d1d17897302b89756a8184c0b5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Orthogonal/Variant10341687e1a33ec31e17e7241d354ebadc332d1d17897302b89756a8184c0b5e.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c39e690917950911c5072f5eb4cecdd652743e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
