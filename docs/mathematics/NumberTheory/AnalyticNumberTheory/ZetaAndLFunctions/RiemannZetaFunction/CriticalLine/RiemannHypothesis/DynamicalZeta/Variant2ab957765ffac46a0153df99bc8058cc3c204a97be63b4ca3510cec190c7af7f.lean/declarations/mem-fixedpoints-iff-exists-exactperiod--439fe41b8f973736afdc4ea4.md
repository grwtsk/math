# mem_fixedPoints_iff_exists_exactPeriod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9dd9cc77453f9db6561266e0b944f7dd08388dc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ebf29f0-8076-aa82-e214-1c24d7887b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2531aa33-8d96-45f7-a707-1d51f75f4dec",
  "kind": "theorem",
  "lexical_name": "mem_fixedPoints_iff_exists_exactPeriod",
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
  "slug": "mem-fixedpoints-iff-exists-exactperiod--439fe41b8f973736afdc4ea4",
  "source": {
    "blob": "9dd9cc77453f9db6561266e0b944f7dd08388dc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 166,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:439fe41b8f973736afdc4ea423b6efebd95494219d56b437e2a445d1999e6443",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2531aa33-8d96-45f7-a707-1d51f75f4dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_fixedPoints_iff_exists_exactPeriod {n : Nat}
    (H : BitPerm n)
    {k : Nat}
    (hk : 0 < k)
    (x : Bits n) :
    x ∈ fixedPoints H k ↔
      ∃ r ∈ k.divisors, x ∈ exactPeriodPoints H r := by
  constructor
  · intro hx
    have hfixed := (mem_fixedPoints_iff H k x).1 hx
    let r := Function.minimalPeriod H x
    have hmem : x ∈ Function.periodicPts H := H.injective.mem_periodicPts x
    have hr_pos : 0 < r :=
      Function.minimalPeriod_pos_of_mem_periodicPts hmem
    have hr_dvd : r ∣ k :=
      ((isPeriodicPt_iff_pow_apply H k x).2 hfixed).minimalPeriod_dvd
    refine ⟨r, Nat.mem_divisors.2 ⟨hr_dvd, hk.ne'⟩, ?_⟩
    exact (mem_exactPeriodPoints_iff H r x).2
      ((hasExactPeriod_iff_minimalPeriod_eq H r x).2 rfl)
  · rintro ⟨r, hr_mem, hx⟩
    have hexact := (mem_exactPeriodPoints_iff H r x).1 hx
    have hr_dvd : r ∣ k := Nat.dvd_of_mem_divisors hr_mem
    obtain ⟨q, rfl⟩ := hr_dvd
    apply (mem_fixedPoints_iff H (r * q) x).2
    exact (isPeriodicPt_iff_pow_apply H (r * q) x).1
      (((isPeriodicPt_iff_pow_apply H r x).2 hexact.2.1).mul_const q)

/-- Different exact periods define disjoint state sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant2ab957765ffac46a0153df99bc8058cc3c204a97be63b4ca3510cec190c7af7f.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dd9cc77453f9db6561266e0b944f7dd08388dc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
