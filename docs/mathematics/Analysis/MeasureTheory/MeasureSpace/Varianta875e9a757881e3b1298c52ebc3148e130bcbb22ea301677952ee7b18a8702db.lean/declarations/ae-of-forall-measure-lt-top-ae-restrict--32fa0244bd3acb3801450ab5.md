# ae_of_forall_measure_lt_top_ae_restrict'

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
      "line": 3682,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd05089a-8dec-d3a9-16dd-dc6a51344547",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6e7eefc-3969-b9d3-72fb-97606975434e",
  "kind": "theorem",
  "lexical_name": "ae_of_forall_measure_lt_top_ae_restrict'",
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
  "slug": "ae-of-forall-measure-lt-top-ae-restrict--32fa0244bd3acb3801450ab5",
  "source": {
    "blob": "ad6667f902bfc546b425be27a18d9e6954b1b5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3696,
    "line": 3682,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fa0244bd3acb3801450ab51b6e90776e65c9ad3a53718b688b73577410c206",
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

Occurrence: `result:c6e7eefc-3969-b9d3-72fb-97606975434e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3682–3696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_of_forall_measure_lt_top_ae_restrict' {μ : Measure α} (ν : Measure α) [SigmaFinite μ]
    [SigmaFinite ν] (P : α → Prop)
    (h : ∀ s, MeasurableSet s → μ s < ∞ → ν s < ∞ → ∀ᵐ x ∂μ.restrict s, P x) : ∀ᵐ x ∂μ, P x := by
  have : ∀ n, ∀ᵐ x ∂μ, x ∈ spanningSets (μ + ν) n → P x := by
    intro n
    have := h
      (spanningSets (μ + ν) n) (measurable_spanningSets _ _)
      ((self_le_add_right _ _).trans_lt (measure_spanningSets_lt_top (μ + ν) _))
      ((self_le_add_left _ _).trans_lt (measure_spanningSets_lt_top (μ + ν) _))
    exact (ae_restrict_iff' (measurable_spanningSets _ _)).mp this
  filter_upwards [ae_all_iff.2 this] with _ hx using hx _ (mem_spanningSetsIndex _ _)
#align measure_theory.ae_of_forall_measure_lt_top_ae_restrict' MeasureTheory.ae_of_forall_measure_lt_top_ae_restrict'

/-- To prove something for almost all `x` w.r.t. a σ-finite measure, it is sufficient to show that
  this holds almost everywhere in sets where the measure has finite value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpace/Varianta875e9a757881e3b1298c52ebc3148e130bcbb22ea301677952ee7b18a8702db.lean#L3682).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6667f902bfc546b425be27a18d9e6954b1b5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
