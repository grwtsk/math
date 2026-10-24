# actual_upper_continuous_row_eq_local_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "981226b7204ae9d3e81b1cd49069b6fed79b89b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e2cb8ad-653b-b2e4-7af5-5251ec306043",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fde7d59c-c877-a067-aaca-fd00241f5175",
  "kind": "theorem",
  "lexical_name": "actual_upper_continuous_row_eq_local_profile",
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
  "slug": "actual-upper-continuous-row-eq-local-profile--5afc1aec84e31b1ac781f042",
  "source": {
    "blob": "981226b7204ae9d3e81b1cd49069b6fed79b89b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5afc1aec84e31b1ac781f0429b4c1618d8e90f2da1b2fbccaa96ac6e8aa3d457",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fde7d59c-c877-a067-aaca-fd00241f5175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_upper_continuous_row_eq_local_profile {A d : ℝ} (hA : 1 ≤ A)
    (hd : 0 < d) (hdX : d ≤ Real.exp (2 * A)) :
    upperContinuousDivisorIntegral A d = actualLocalPeanoProfile A (Real.log d) / Real.sqrt d := by
  rw [actual_upper_continuous_row_eq_Peano hA hd hdX,
    actualLocalPeanoProfile_eq_conjugated, Real.exp_half, Real.exp_log hd]
  have hs : Real.sqrt d ≠ 0 := (Real.sqrt_pos.2 hd).ne'
  have hsq := Real.sq_sqrt hd.le
  have hfrac : Real.sqrt d / d = 1 / Real.sqrt d := by
    field_simp
    exact hsq
  calc
    _ = (Real.sqrt d / d) * actualLocalPeanoProfile A (Real.log d) := by ring
    _ = _ := by rw [hfrac]; ring

/-- Closed-half-support identification retains the exact physical polynomial profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/F39ba5921290f1103fbdSourcePeanoSignedShortJet/Variantf39ba5921290f1103fbd1d07787f3af854c25e5f66647e0cc286772479187f0d.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981226b7204ae9d3e81b1cd49069b6fed79b89b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
