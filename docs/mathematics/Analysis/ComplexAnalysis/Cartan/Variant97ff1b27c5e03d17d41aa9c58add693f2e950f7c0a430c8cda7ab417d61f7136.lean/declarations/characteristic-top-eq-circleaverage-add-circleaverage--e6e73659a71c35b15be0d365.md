# characteristic_top_eq_circleAverage_add_circleAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7de071360429306c02d1deba0322c79319a1570a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97ff1b27c5e03d17d41aa9c58add693f2e950f7c0a430c8cda7ab417d61f7136.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16311a67-ea89-16fa-66c2-b0e64ed65e79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:58921e35-b22c-e82a-eb57-b511f4d460cc",
  "kind": "theorem",
  "lexical_name": "characteristic_top_eq_circleAverage_add_circleAverage",
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
  "slug": "characteristic-top-eq-circleaverage-add-circleaverage--e6e73659a71c35b15be0d365",
  "source": {
    "blob": "7de071360429306c02d1deba0322c79319a1570a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 171,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant97ff1b27c5e03d17d41aa9c58add693f2e950f7c0a430c8cda7ab417d61f7136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6e73659a71c35b15be0d365f1ea3ab161cf859b17da479cb3244c3ee8c39953",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Cartan/Variant97ff1b27c5e03d17d41aa9c58add693f2e950f7c0a430c8cda7ab417d61f7136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58921e35-b22c-e82a-eb57-b511f4d460cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characteristic_top_eq_circleAverage_add_circleAverage (h : Meromorphic f) (hR : R ≠ 0) :
    characteristic f ⊤ R = circleAverage (logCounting f · R) 0 1
      + circleAverage (fun a ↦ log ‖meromorphicTrailingCoeffAt (f · - a) 0‖) 0 1 := calc
  characteristic f ⊤ R
      = circleAverage (fun a ↦ circleAverage (log ‖f · - a‖) 0 R + logCounting f ⊤ R) 0 1 := by
      simp only [characteristic, proximity, ↓reduceDIte, Pi.add_apply]
      rw [← proximity_top, ← circleAverage_circleAverage_eq_proximity_top h,
        circleAverage_fun_add (circleIntegrable_circleAverage_log_norm_sub h)
          (circleIntegrable_const (logCounting f ⊤ R) 0 1), circleAverage_const]
    _ = circleAverage (logCounting f · R) 0 1
          + circleAverage (fun a ↦ log ‖meromorphicTrailingCoeffAt (f · - a) 0‖) 0 1 := by
      rw [← circleAverage_add (circleIntegrable_logCounting h)
        circleIntegrable_log_meromorphicTrailingCoeffAt, circleAverage_congr_sphere]
      intro a ha
      simp [logCounting_add_log_trailingCoeff_eq_circleAverage_add_logCounting_top h hR a]

/--
**Cartan's formula** in the case where `0 < meromorphicOrderAt f 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Cartan/Variant97ff1b27c5e03d17d41aa9c58add693f2e950f7c0a430c8cda7ab417d61f7136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Cartan/Variant97ff1b27c5e03d17d41aa9c58add693f2e950f7c0a430c8cda7ab417d61f7136.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de071360429306c02d1deba0322c79319a1570a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
