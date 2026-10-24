# lintegral_rpow_eq_lintegral_meas_lt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b158ff982a5f68c7c5ae30446d2c9da02375fa2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd5cce3f-ad23-df1c-b8b1-543a08d36c0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d60d7430-3bdf-7fb9-8258-a7b27c7812a7",
  "kind": "theorem",
  "lexical_name": "lintegral_rpow_eq_lintegral_meas_lt_mul",
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
  "slug": "lintegral-rpow-eq-lintegral-meas-lt-mul--dda36573fe86e025585c1614",
  "source": {
    "blob": "b158ff982a5f68c7c5ae30446d2c9da02375fa2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda36573fe86e025585c1614f89042aecf50bd7f99828383113e08f85e66bc58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d60d7430-3bdf-7fb9-8258-a7b27c7812a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_rpow_eq_lintegral_meas_lt_mul
    {f : α → ℝ} (f_nn : 0 ≤ᵐ[μ] f) (f_mble : AEMeasurable f μ) {p : ℝ} (p_pos : 0 < p) :
    ∫⁻ ω, ENNReal.ofReal (f ω ^ p) ∂μ =
      ENNReal.ofReal p * ∫⁻ t in Ioi 0, μ {a : α | t < f a} * ENNReal.ofReal (t ^ (p - 1)) := by
  rw [lintegral_rpow_eq_lintegral_meas_le_mul μ f_nn f_mble p_pos]
  apply congr_arg fun z => ENNReal.ofReal p * z
  apply lintegral_congr_ae
  filter_upwards [meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f] with t ht
  rw [ht]

end LayercakeLT

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variante7183325f9ee10457294cea749d4b9469fdce9296b979a12e35df92a7200b321.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b158ff982a5f68c7c5ae30446d2c9da02375fa2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
