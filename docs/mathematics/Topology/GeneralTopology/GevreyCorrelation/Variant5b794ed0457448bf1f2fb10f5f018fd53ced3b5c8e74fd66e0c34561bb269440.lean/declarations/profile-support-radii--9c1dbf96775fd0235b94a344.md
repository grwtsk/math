# profile_support_radii

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5080b18d-60f3-f0f5-55ad-e830e62fa5fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05cafd7b-9acf-5190-38fb-45dd02d1bb0d",
  "kind": "theorem",
  "lexical_name": "profile_support_radii",
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
  "slug": "profile-support-radii--9c1dbf96775fd0235b94a344",
  "source": {
    "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c1dbf96775fd0235b94a3443b07ca66241102dc4e83928bf8bc1381eacb5d8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05cafd7b-9acf-5190-38fb-45dd02d1bb0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem profile_support_radii {A : ℝ} (hA : 0 < A) :
    support GevreyProfile.profile ⊆ Icc (-1) 1 ∧
    support (scaledProfile GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (dilationOperator GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (normalizedOperator GevreyProfile.profile A) ⊆ Icc (-A) A ∧
    support (correlation GevreyProfile.profile A) ⊆ Icc (-(2 * A)) (2 * A) := by
  have hs : support GevreyProfile.profile ⊆ Icc (-1) 1 := by
    rw [GevreyProfile.profile_support]
    exact Ioo_subset_Icc_self
  exact ⟨hs, scaledProfile_support hs hA, dilationOperator_support hs hA,
    normalizedOperator_support hs hA, correlation_support GevreyProfile.profile_contDiff hs hA⟩

/-- The corrected profile's autocorrelation takes value one at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
