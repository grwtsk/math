# integralTail_positive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af75633-d530-be94-c3e8-4ca2ab04602c",
  "kind": "theorem",
  "lexical_name": "integralTail_positive",
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
  "slug": "integraltail-positive--f286ddb11aaf13d387fb5c13",
  "source": {
    "blob": "7a40185e398ddec88ec7cda16474c27d993eaa59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f286ddb11aaf13d387fb5c1316f8cbcce297cd599329cc963505e5b08bcbd874",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af75633-d530-be94-c3e8-4ca2ab04602c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralTail_positive {f : ℝ → ℝ}
    (hi : IntegrableOn f (Ici (0 : ℝ))) (hp : ∀ u : ℝ, 0 ≤ u → 0 < f u)
    {t : ℝ} (ht : 0 ≤ t) : 0 < integralTail f t := by
  unfold integralTail
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (hi.mono_set (Ici_subset_Ici.mpr ht))).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro u hu
    have hut : t ≤ u := by have := hu.1; linarith
    exact ⟨(hp u (ht.trans hut)).ne', hut⟩
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    exact (hp u (ht.trans hu)).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a40185e398ddec88ec7cda16474c27d993eaa59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
