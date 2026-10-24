# centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8da358fe-8d9c-873b-c2fd-866e1a7285b1",
  "kind": "theorem",
  "lexical_name": "centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock",
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
  "slug": "centeredtaildivisorblock-eq-restrictedproductmobiuslogblock--c5a6c72ebbc4d24a70a0a2bd",
  "source": {
    "blob": "2642927ce9edc1680b15c445153abd720c29efed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 79,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5a6c72ebbc4d24a70a0a2bd7951ca99e1b10803ac9709b7fca68a7a3b350358",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8da358fe-8d9c-873b-c2fd-866e1a7285b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTailDivisorBlock_eq_restrictedProductMobiusLogBlock
    {X r n : ℕ}
    (hn : n ∈ octaveIndexSet X)
    (hr : 0 < r)
    (hrn : r ∣ n) :
    centeredTailDivisorBlock X r n =
      restrictedProductMobiusLogBlock r (n / r) := by
  have hnpos : 0 < n := (octave_mem_bounds hn).1
  have hqpos : 0 < n / r := by
    exact Nat.div_pos (Nat.le_of_dvd hnpos hrn) hr
  have hmap :
      (n / r).divisors.map (positiveMulEmbedding r hr) =
        (modulusIndexSet X).filter
          (fun d => r ∣ d ∧ d ∣ n) := by
    ext d
    constructor
    · intro hd
      rcases Finset.mem_map.mp hd with ⟨a, ha, rfl⟩
      have hadiv : a ∣ n / r :=
        Nat.dvd_of_mem_divisors ha
      have hna : r * a ∣ n := by
        obtain ⟨c, hc⟩ := hadiv
        refine ⟨c, ?_⟩
        calc
          n = r * (n / r) := (Nat.mul_div_cancel' hrn).symm
          _ = r * (a * c) := by rw [hc]
          _ = r * a * c := by ring
      have hapos : 0 < a :=
        Nat.pos_of_mem_divisors ha
      have hdpos : 0 < r * a := Nat.mul_pos hr hapos
      have hdle : r * a ≤ n := Nat.le_of_dvd hnpos hna
      exact Finset.mem_filter.mpr
        ⟨Finset.mem_Icc.mpr
          ⟨hdpos, hdle.trans (octave_mem_bounds hn).2⟩,
          dvd_mul_right r a, hna⟩
    · intro hd
      rcases Finset.mem_filter.mp hd with
        ⟨hdmod, hrd, hdn⟩
      have hdI := Finset.mem_Icc.mp hdmod
      have hqdiv : d / r ∣ n / r :=
        (Nat.div_dvd_div_iff_right hrd hrn).2 hdn
      have hq0 : n / r ≠ 0 := Nat.ne_of_gt hqpos
      have hmem : d / r ∈ (n / r).divisors :=
        Nat.mem_divisors.mpr ⟨hqdiv, hq0⟩
      refine Finset.mem_map.mpr ⟨d / r, hmem, ?_⟩
      exact Nat.mul_div_cancel' hrd
  unfold centeredTailDivisorBlock
    restrictedProductMobiusLogBlock
  rw [← Finset.sum_filter, ← hmap, Finset.sum_map]
  apply Finset.sum_congr rfl
  intro a ha
  simp only [positiveMulEmbedding]
  unfold mobiusLogTerm
  rw [Nat.div_div_eq_div_mul]

/-- If `r` does not divide the base point, its divisor block vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2642927ce9edc1680b15c445153abd720c29efed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
