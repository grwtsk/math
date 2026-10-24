# pairProductByValue_eq_boundedDirichletConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb14a8f-19d5-30c1-dbd8-5eb25da79159",
  "kind": "theorem",
  "lexical_name": "pairProductByValue_eq_boundedDirichletConv",
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
  "slug": "pairproductbyvalue-eq-boundeddirichletconv--18d963a815d1c86670aae660",
  "source": {
    "blob": "301b87eed92dcdad199f31693a8651d6d307d0d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d963a815d1c86670aae6600808b304bcd3391326d0200588e08fb8e005ccda",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb14a8f-19d5-30c1-dbd8-5eb25da79159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairProductByValue_eq_boundedDirichletConv
    [CommSemiring R]
    (N n : Nat)
    (f g : ArithFn R)
    (hn : 0 < n) :
    pairProductByValue N n f g =
      boundedDirichletConv N f g n := by
  rw [boundedDirichletConv_eq_sum]
  unfold pairProductByValue
  symm
  refine Finset.sum_bij
    (fun d _hd => (d, n / d)) ?hi ?hinj ?hsurj ?hterm
  · intro d hd
    simp only [boundedDivisorPairs, Finset.mem_filter] at hd
    rcases hd with ⟨hdivmem, hdle, hquotle⟩
    have hdvd : d ∣ n := (Nat.mem_divisors.mp hdivmem).1
    have hdpos : 0 < d := Nat.pos_of_mem_divisors hdivmem
    have hmul : d * (n / d) = n := by
      rw [Nat.mul_comm]
      exact Nat.div_mul_cancel hdvd
    have hquotpos : 0 < n / d := by
      by_contra hnot
      have hzero : n / d = 0 := Nat.eq_zero_of_not_pos hnot
      have : n = 0 := by simpa [hzero] using hmul.symm
      exact hn.ne' this
    refine Finset.mem_filter.mpr ?_
    refine ⟨Finset.mem_product.mpr ?_, hmul⟩
    exact
      ⟨ Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt hdpos, hdle⟩
      , Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt hquotpos, hquotle⟩
      ⟩
  · intro _d₁ _hd₁ _d₂ _hd₂ hpair
    exact Prod.ext_iff.mp hpair |>.1
  · intro de hde
    rcases Finset.mem_filter.mp hde with ⟨hprodmem, hmul⟩
    rcases Finset.mem_product.mp hprodmem with ⟨hdmem, hemem⟩
    have hdIcc := Finset.mem_Icc.mp hdmem
    have heIcc := Finset.mem_Icc.mp hemem
    refine ⟨de.1, ?_, ?_⟩
    · simp only [boundedDivisorPairs, Finset.mem_filter]
      have hdvd : de.1 ∣ n := ⟨de.2, hmul.symm⟩
      have hdivmem : de.1 ∈ Nat.divisors n :=
        Nat.mem_divisors.mpr ⟨hdvd, hn.ne'⟩
      have hdpos : 0 < de.1 :=
        lt_of_lt_of_le Nat.zero_lt_one hdIcc.1
      have hdiv : n / de.1 = de.2 := by
        exact Nat.div_eq_of_eq_mul_right hdpos hmul.symm
      exact ⟨hdivmem, hdIcc.2, by simpa [hdiv] using heIcc.2⟩
    · have hdpos : 0 < de.1 :=
        lt_of_lt_of_le Nat.zero_lt_one hdIcc.1
      have hdiv : n / de.1 = de.2 := by
        exact Nat.div_eq_of_eq_mul_right hdpos hmul.symm
      ext <;> simp [hdiv]
  · intro _d _hd
    rfl

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedDirichletConvolution/Variant73a256bb3ee918c4b4abfdf083e8d7d5bb1079b0f06873e01dfcadb8e552ee4a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `301b87eed92dcdad199f31693a8651d6d307d0d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
