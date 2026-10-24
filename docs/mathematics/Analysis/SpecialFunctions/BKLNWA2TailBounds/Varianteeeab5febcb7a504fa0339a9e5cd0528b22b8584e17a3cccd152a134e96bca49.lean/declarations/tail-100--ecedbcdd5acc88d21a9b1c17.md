# tail_100

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cccb9f8-ea60-0d09-2a69-8ceddba10860",
  "kind": "theorem",
  "lexical_name": "tail_100",
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
  "slug": "tail-100--ecedbcdd5acc88d21a9b1c17",
  "source": {
    "blob": "79c2133779b6e685cfb92d430f2bb37f5e45c5cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecedbcdd5acc88d21a9b1c17017dcc5c6bdfc31715eeb33c2e768be82baf6367",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cccb9f8-ea60-0d09-2a69-8ceddba10860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_100 : (136:ℝ) * exp (-200/9) < 5e-8 := by
  have h : exp (-200/9 : ℝ) < 3e-10 := by interval_decide 160
  calc (136:ℝ) * exp (-200/9) < 136 * (3e-10 : ℝ) := mul_lt_mul_of_pos_left h (by positivity)
    _ = 408e-10 := by norm_num
    _ < 5e-8 := by norm_num

-- ═══════════════════════ b=150 ═══════════════════════
-- N = 216 terms, K_head = 5 (3 explicit head terms k=3..5)
-- Head: 1 + exp(-25/2) + exp(-20)
-- Tail: 211 terms bounded by 211 * exp(-25) ≈ 3e-9
-- Note: with alpha factor, head ≈ 1.000003748

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2TailBounds/Varianteeeab5febcb7a504fa0339a9e5cd0528b22b8584e17a3cccd152a134e96bca49.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c2133779b6e685cfb92d430f2bb37f5e45c5cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
