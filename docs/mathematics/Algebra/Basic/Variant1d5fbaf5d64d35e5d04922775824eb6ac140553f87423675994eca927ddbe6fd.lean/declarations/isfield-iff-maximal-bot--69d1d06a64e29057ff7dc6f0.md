# isField_iff_maximal_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48efd4c9-83c9-bfa0-704c-c0f1bfc819d6",
  "kind": "theorem",
  "lexical_name": "isField_iff_maximal_bot",
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
  "slug": "isfield-iff-maximal-bot--69d1d06a64e29057ff7dc6f0",
  "source": {
    "blob": "3b7a89b82957cff987544a646c5c92bccdf41159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 267,
    "path": "GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69d1d06a64e29057ff7dc6f0d2aa1e0cc84a6cad601ef11127aca52e1c4b4a4f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48efd4c9-83c9-bfa0-704c-c0f1bfc819d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isField_iff_maximal_bot [Nontrivial R] : IsField R ↔ (⊥ : Ideal R).IsMaximal := by
  refine ⟨fun h ↦ let := h.toSemifield; bot_isMaximal, fun hmax ↦ ?_⟩
  by_contra hf
  obtain ⟨x, hx0, hxu⟩ := exists_not_isUnit_of_not_isField hf
  exact hx0 <| span_singleton_eq_bot.mp (hmax.eq_of_le (span_singleton_ne_top hxu) bot_le).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7a89b82957cff987544a646c5c92bccdf41159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
