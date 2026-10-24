# pi_map_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f462e7b2-ced2-c6db-2bbf-05435e674d32",
  "kind": "lemma",
  "lexical_name": "pi_map_eval",
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
  "slug": "pi-map-eval--99aa123a3d1d464ae432761d",
  "source": {
    "blob": "2bda5be28956dcce27306c9b51fdb7eeca526f1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 383,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99aa123a3d1d464ae432761d97e0361487deea298d909076fb96c03b449f6109",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f462e7b2-ced2-c6db-2bbf-05435e674d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pi_map_eval [DecidableEq ι] (i : ι) :
     (Measure.pi μ).map (Function.eval i) = (∏ j ∈ Finset.univ.erase i, μ j Set.univ) • (μ i) := by
  ext s hs
  rw [Measure.map_apply (measurable_pi_apply i) hs, ← Set.univ_pi_update_univ, Measure.pi_pi,
    Measure.smul_apply, smul_eq_mul, ← Finset.prod_erase_mul _ _ (a := i) (by simp)]
  congrm ?_ * ?_
  swap; · simp
  refine Finset.prod_congr rfl fun j hj ↦ ?_
  simp [Function.update, Finset.ne_of_mem_erase hj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant869f904ab4796f85d32208c7fd691a134726c2910563bd290eb8b73de315cbf5.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bda5be28956dcce27306c9b51fdb7eeca526f1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
