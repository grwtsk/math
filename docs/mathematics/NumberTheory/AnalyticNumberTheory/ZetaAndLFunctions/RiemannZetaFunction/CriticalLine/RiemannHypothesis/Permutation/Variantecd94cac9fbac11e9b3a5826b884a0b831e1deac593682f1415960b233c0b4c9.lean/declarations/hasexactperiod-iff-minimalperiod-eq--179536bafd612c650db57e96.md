# hasExactPeriod_iff_minimalPeriod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc20c4c21a9aa4db811a09489abe21d607fa5065",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6157ca63-1a85-2975-ba82-721e6598ecb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ef25c5f-687d-b94c-af49-63cdc8251f75",
  "kind": "theorem",
  "lexical_name": "hasExactPeriod_iff_minimalPeriod_eq",
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
  "slug": "hasexactperiod-iff-minimalperiod-eq--179536bafd612c650db57e96",
  "source": {
    "blob": "bc20c4c21a9aa4db811a09489abe21d607fa5065",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 203,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:179536bafd612c650db57e9634878140284c5168c0895baf608b8da2e228e199",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef25c5f-687d-b94c-af49-63cdc8251f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasExactPeriod_iff_minimalPeriod_eq
    (H : Equiv.Perm α) (r : Nat) (x : α) :
    HasExactPeriod H r x ↔ Function.minimalPeriod H x = r := by
  constructor
  · rintro ⟨hr, hfixed, hminimal⟩
    have hperiodic : Function.IsPeriodicPt H r x :=
      (isPeriodicPt_iff_pow_apply H r x).2 hfixed
    have hmin_le : Function.minimalPeriod H x ≤ r :=
      hperiodic.minimalPeriod_le hr
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      hperiodic.minimalPeriod_pos hr
    apply Nat.le_antisymm hmin_le
    by_contra hnot
    have hlt : Function.minimalPeriod H x < r := by omega
    exact hminimal (Function.minimalPeriod H x) hmin_pos hlt
      ((isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x))
  · intro hmin
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hmin_pos : 0 < Function.minimalPeriod H x :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
    refine ⟨hmin ▸ hmin_pos, ?_, ?_⟩
    · rw [← hmin]
      exact (isPeriodicPt_iff_pow_apply H _ x).1
        (Function.isPeriodicPt_minimalPeriod H x)
    · intro d hd_pos hd_lt hd_fixed
      have hperiodic : Function.IsPeriodicPt H d x :=
        (isPeriodicPt_iff_pow_apply H d x).2 hd_fixed
      have hdvd : r ∣ d := by
        rw [← hmin]
        exact hperiodic.minimalPeriod_dvd
      exact (Nat.not_le_of_lt hd_lt) (Nat.le_of_dvd hd_pos hdvd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc20c4c21a9aa4db811a09489abe21d607fa5065` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
