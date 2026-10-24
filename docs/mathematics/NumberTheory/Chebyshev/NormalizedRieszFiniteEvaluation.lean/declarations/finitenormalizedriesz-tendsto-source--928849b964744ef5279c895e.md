# finiteNormalizedRiesz_tendsto_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee7e648-40f3-0104-9ee2-19bcdeb4c7eb",
  "kind": "theorem",
  "lexical_name": "finiteNormalizedRiesz_tendsto_source",
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
  "slug": "finitenormalizedriesz-tendsto-source--928849b964744ef5279c895e",
  "source": {
    "blob": "d955b3c71ad67285d63f6b740e70b52850c531f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 70,
    "path": "GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:928849b964744ef5279c895ecdb9d732c3ae1ca52a148164aa6290e42da62cb9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee7e648-40f3-0104-9ee2-19bcdeb4c7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteNormalizedRiesz_tendsto_source (N : ℕ) (x : ℝ)
    (hx : 1 < x) (hN : 3 ≤ N) (hxN : x ≤ N) :
    Tendsto (finiteNormalizedRiesz x) atTop (𝓝 (firstRieszPrefix N x : ℂ)) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  have he := (normalizedRieszTailBudget_tendsto_zero x).eventually (gt_mem_nhds hε)
  filter_upwards [he, eventually_ge_atTop (2 : ℝ)] with T heT hT
  rw [dist_eq_norm, norm_sub_rev]
  exact (norm_source_sub_finite_le N x T hx hN hxN hT).trans_lt heT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/NormalizedRieszFiniteEvaluation.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d955b3c71ad67285d63f6b740e70b52850c531f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
