# summable_of_absolute_convergence_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbd9ffdd-1753-8933-7ad8-5dd26f233db6",
  "kind": "theorem",
  "lexical_name": "summable_of_absolute_convergence_real",
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
  "slug": "summable-of-absolute-convergence-real--a0dbf58a7179a1ee1cb33515",
  "source": {
    "blob": "37c38d7968afc5593b67c2ae4a6282dd9d370f42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0dbf58a7179a1ee1cb3351579db9be111919ea253b2e61674e5cb528bacb5cf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbd9ffdd-1753-8933-7ad8-5dd26f233db6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_of_absolute_convergence_real {f : ℕ → ℝ} :
    (∃ r, Tendsto (fun n ↦ ∑ i in range n, |f i|) atTop (𝓝 r)) → Summable f
  | ⟨r, hr⟩ => by
    refine' summable_of_summable_norm ⟨r, (hasSum_iff_tendsto_nat_of_nonneg _ _).2 _⟩
    exact fun i ↦ norm_nonneg _
    simpa only using hr
#align summable_of_absolute_convergence_real summable_of_absolute_convergence_real

/-! ### Powers -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantc743dc2ddf74727791fc3c36eeb3ba26ae5c864329f69ee1fd4629391e7b403c.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c38d7968afc5593b67c2ae4a6282dd9d370f42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
