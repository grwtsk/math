# map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13428252-4e3c-97a8-91fa-44ebf0ddbbb9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c9a09df-fc6a-7241-6e8e-3ccd543e9cff",
  "kind": "theorem",
  "lexical_name": "map_smul",
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
  "slug": "map-smul--dd0c17157dded7fc9c03c4ee",
  "source": {
    "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1211,
    "line": 1194,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd0c17157dded7fc9c03c4ee42aed4766e9e0097555b7d3bae8e0b6f68f09b74",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c9a09df-fc6a-7241-6e8e-3ccd543e9cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1194–1211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem map_smul (c : ℝ≥0∞) (μ : Measure α) (f : α → β) :
    (c • μ).map f = c • μ.map f := by
  rcases eq_or_ne c 0 with (rfl | hc); · simp
  by_cases hf : AEMeasurable f μ
  · have hfc : AEMeasurable f (c • μ) :=
      ⟨hf.mk f, hf.measurable_mk, (ae_smul_measure_iff hc).2 hf.ae_eq_mk⟩
    simp only [← mapₗ_mk_apply_of_aemeasurable hf, ← mapₗ_mk_apply_of_aemeasurable hfc,
      LinearMap.map_smulₛₗ, RingHom.id_apply]
    congr 1
    apply mapₗ_congr hfc.measurable_mk hf.measurable_mk
    exact EventuallyEq.trans ((ae_smul_measure_iff hc).1 hfc.ae_eq_mk.symm) hf.ae_eq_mk
  · have hfc : ¬AEMeasurable f (c • μ) := by
      intro hfc
      exact hf ⟨hfc.mk f, hfc.measurable_mk, (ae_smul_measure_iff hc).1 hfc.ae_eq_mk⟩
    simp [map_of_not_aemeasurable hf, map_of_not_aemeasurable hfc]
#align measure_theory.measure.map_smul MeasureTheory.Measure.map_smul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean#L1194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6667f902bfc546b425be27a18d9e6954b1b5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
