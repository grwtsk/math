# weightedDivisors_summation_by_parts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb68b5ba-fb3e-4594-1900-8fc783fec4d4",
  "kind": "theorem",
  "lexical_name": "weightedDivisors_summation_by_parts",
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
  "slug": "weighteddivisors-summation-by-parts--ce3c764653a81da15802fa41",
  "source": {
    "blob": "34ae4eabc303ce6239fe00d976186eb152b6e4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 336,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce3c764653a81da15802fa41f9a1a758f03590f68e45bc1e05ddfa1a1c348a46",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb68b5ba-fb3e-4594-1900-8fc783fec4d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedDivisors_summation_by_parts (P : Finset ℕ) (U : ℕ) (f : ℕ → ℝ) :
    weightedDivisors P U f = f U * restrictedMertens P U (U + 1) -
      ∑ e ∈ Finset.range U, (f (e + 1) - f e) * restrictedMertens P U (e + 1) := by
  classical
  have hfilter : (Finset.range (U + 1)).filter (fun e => e ∈ primeDivisors P U) =
      primeDivisors P U := by
    ext e
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact fun h => h.2
    · intro he
      exact ⟨Nat.lt_succ_of_le (Finset.mem_filter.mp he).2, he⟩
  have hs : (∑ e ∈ Finset.range (U + 1), f e * maskedMoebius P U e) =
      weightedDivisors P U f := by
    unfold maskedMoebius weightedDivisors
    simp only [mul_ite, mul_zero]
    rw [← Finset.sum_filter, hfilter]
    apply Finset.sum_congr rfl
    intro e _
    ring
  rw [← hs]
  simpa only [smul_eq_mul, Nat.add_sub_cancel, restrictedMertens] using
    (Finset.sum_range_by_parts f (maskedMoebius P U) (U + 1))

/-- Applied Abel representation of the genuine source remainder in every new-prime block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourcePrimeCumulative/Variantcee69f961e7fcddd776a6eb7f78d0c2a8d04094e9f5ec02b0c2ca104cc55fed0.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34ae4eabc303ce6239fe00d976186eb152b6e4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
