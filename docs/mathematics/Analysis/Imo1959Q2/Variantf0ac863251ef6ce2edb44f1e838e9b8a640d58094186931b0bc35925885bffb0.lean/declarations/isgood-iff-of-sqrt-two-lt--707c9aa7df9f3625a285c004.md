# isGood_iff_of_sqrt_two_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2dd79ac5-1a82-040a-0669-363adbed8ee6",
  "kind": "theorem",
  "lexical_name": "isGood_iff_of_sqrt_two_lt",
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
  "slug": "isgood-iff-of-sqrt-two-lt--707c9aa7df9f3625a285c004",
  "source": {
    "blob": "94fe68bb7dda2be48f9e5471b387f10008e3a60c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:707c9aa7df9f3625a285c00413ca3377809a90aee2a895225ab1ddd57e8d816f",
  "verification": {
    "reference": "docs/verification/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dd79ac5-1a82-040a-0669-363adbed8ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGood_iff_of_sqrt_two_lt (hA : sqrt 2 < A) : IsGood x A ↔ x = (A / 2) ^ 2 + 1 / 2 := by
  have : 0 < A := lt_trans (by simp) hA
  constructor
  · intro h
    have hx : 1 < x := by rwa [h.sqrt_two_lt_iff_one_lt] at hA
    rw [isGood_iff_eq_sqrt hx, eq_comm, sqrt_eq_iff_eq_sq] at h <;> linarith
  · rintro rfl
    rw [isGood_iff_eq_sqrt]
    · conv_lhs => rw [← sqrt_sq this.le]
      ring_nf
    · rw [sqrt_lt' this] at hA
      linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94fe68bb7dda2be48f9e5471b387f10008e3a60c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
