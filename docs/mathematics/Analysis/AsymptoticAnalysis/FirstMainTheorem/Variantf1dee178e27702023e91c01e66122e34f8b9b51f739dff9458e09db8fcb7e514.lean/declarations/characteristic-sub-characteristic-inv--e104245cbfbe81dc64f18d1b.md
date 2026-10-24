# characteristic_sub_characteristic_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ea5710896622a4aa8a4b2228e188bbb725c1312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc09328f-d212-6549-8d60-92317f31f2fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:679c430d-9110-4562-2a0e-efde6b9411c3",
  "kind": "lemma",
  "lexical_name": "characteristic_sub_characteristic_inv",
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
  "slug": "characteristic-sub-characteristic-inv--e104245cbfbe81dc64f18d1b",
  "source": {
    "blob": "9ea5710896622a4aa8a4b2228e188bbb725c1312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e104245cbfbe81dc64f18d1bb7234f80ca6f64236d5735cf098150c02d131b2b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:679c430d-9110-4562-2a0e-efde6b9411c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma characteristic_sub_characteristic_inv (h : Meromorphic f) :
    characteristic f ⊤ - characteristic f⁻¹ ⊤ =
      circleAverage (log ‖f ·‖) 0 - (divisor f Set.univ).logCounting := by
  calc characteristic f ⊤ - characteristic f⁻¹ ⊤
  _ = proximity f ⊤ - proximity f⁻¹ ⊤ - (logCounting f⁻¹ ⊤ - logCounting f ⊤) := by
    unfold characteristic
    ring
  _ = circleAverage (log ‖f ·‖) 0 - (logCounting f⁻¹ ⊤ - logCounting f ⊤) := by
    rw [proximity_sub_proximity_inv_eq_circleAverage h]
  _ = circleAverage (log ‖f ·‖) 0 - (logCounting f 0 - logCounting f ⊤) := by
    rw [logCounting_inv]
  _ = circleAverage (log ‖f ·‖) 0 - (divisor f Set.univ).logCounting := by
    rw [← ValueDistribution.log_counting_zero_sub_logCounting_top]

/--
Helper lemma for the first part of the First Main Theorem: Away from zero, the difference between
the characteristic functions of `f` and `f⁻¹` equals `log ‖meromorphicTrailingCoeffAt f 0‖`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FirstMainTheorem/Variantf1dee178e27702023e91c01e66122e34f8b9b51f739dff9458e09db8fcb7e514.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea5710896622a4aa8a4b2228e188bbb725c1312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
