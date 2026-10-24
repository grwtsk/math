# trivialContribution_tail_distance_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41c1096c2c484382fdca06df242f1901518f1803",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a436b12a-a84a-aa28-66ae-a0ad87b5f54a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06570d40-5c92-5429-1537-ba298a2e13ea",
  "kind": "theorem",
  "lexical_name": "trivialContribution_tail_distance_bounds",
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
  "slug": "trivialcontribution-tail-distance-bounds--464520362e6d2d2170ccfc2a",
  "source": {
    "blob": "41c1096c2c484382fdca06df242f1901518f1803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 183,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464520362e6d2d2170ccfc2acc7e9e897339a1c198e15515924730861b20650a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06570d40-5c92-5429-1537-ba298a2e13ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivialContribution_tail_distance_bounds (xi : ℝ) (N : ℕ) :
    Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 ≤
        (∑' n : ℕ, trivialContribution xi (n + N)) ∧
      (∑' n : ℕ, trivialContribution xi (n + N)) ≤
        Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 +
          trivialContribution xi N := by
  have hd : 0 < 2 * (N : ℝ) + 5 / 2 := by positivity
  have ha : 0 < (N : ℝ) + 5 / 4 := by positivity
  have hr : (xi / 2) ^ 2 * (((N : ℝ) + 5 / 4)⁻¹) ^ 2 =
      xi ^ 2 / (trivialDistance N) ^ 2 := by
    rw [trivialDistance_eq]
    field_simp [ne_of_gt hd, ne_of_gt ha] <;> ring
  have hk : kernel (xi / 2) ((N : ℝ) + 5 / 4) =
      trivialContribution xi N := by
    rw [trivialContribution_eq_kernel]
    congr 1
    push_cast
    ring
  have h := trivialContribution_tail_bounds xi N
  rw [hr, hk] at h
  constructor <;> linarith [h.1, h.2]

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TrivialZeroDebt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantcf1d46913b167abe4fa9cda98b24136458cbd129cefc39ce2aa2f7e17df27894.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41c1096c2c484382fdca06df242f1901518f1803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
