# wInner_cWeight_eq_zero_iff_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5705134c-ddf1-de45-4c64-e387e832cb87",
  "kind": "lemma",
  "lexical_name": "wInner_cWeight_eq_zero_iff_ne",
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
  "slug": "winner-cweight-eq-zero-iff-ne--0401082ac30e1292efe56e7b",
  "source": {
    "blob": "38c642a4b7e8bd6aa1c92994e7467001fab1b43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 72,
    "path": "GRWTSK/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0401082ac30e1292efe56e7bf93645efdf3f7e9bbef3e31891698113d3ae2431",
  "verification": {
    "reference": "docs/verification/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5705134c-ddf1-de45-4c64-e387e832cb87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma wInner_cWeight_eq_zero_iff_ne [Fintype G] : ⟪(ψ₁ : G → R), ψ₂⟫ₙ_[R] = 0 ↔ ψ₁ ≠ ψ₂ := by
  rw [wInner_cWeight_eq_boole, one_ne_zero.ite_eq_right_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Orthogonality/Variant5437f6c9af49db8a6f50144a067a40ba70a022be4c5e866b26ef03133e9add05.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38c642a4b7e8bd6aa1c92994e7467001fab1b43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
