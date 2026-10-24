# hasExactPeriod_iff_minimalPeriod_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9fe5ae5-8194-f6f1-2d4f-1f0daa25e616",
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
  "slug": "hasexactperiod-iff-minimalperiod-eq--c7e23cd2a8b8aed425c45614",
  "source": {
    "blob": "ca67382daad7d6bf985ca870ec2ce869c6e47b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 211,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e23cd2a8b8aed425c4561492078f5ffdd19d4e4ed51a3efc6b6a04aeb37974",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9fe5ae5-8194-f6f1-2d4f-1f0daa25e616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–243.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variant412989e563fa65c63d71036c2f4a9dd8d7a94d035bffa8f59b02ca6ebe9aed86.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca67382daad7d6bf985ca870ec2ce869c6e47b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
