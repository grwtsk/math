# four_mem_primeSquareIndices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:538b9a06-6845-5c76-895f-a7982d3de62a",
  "kind": "theorem",
  "lexical_name": "four_mem_primeSquareIndices_iff",
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
  "slug": "four-mem-primesquareindices-iff--238de44e74d22ad6926432d5",
  "source": {
    "blob": "32e2352b65dbc5b201fa412522fbece6ba62fbd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variantf50f3a6081229a5621eb9e3f73447f4c79742dea95d2eabeeaf2e1d08558e128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238de44e74d22ad6926432d55746389bf76e594291c487e83ddeb92bbe3a98c7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variantf50f3a6081229a5621eb9e3f73447f4c79742dea95d2eabeeaf2e1d08558e128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:538b9a06-6845-5c76-895f-a7982d3de62a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_mem_primeSquareIndices_iff (A : ℝ) :
    4 ∈ primeSquareIndices A ↔ Real.log 2 < A := by
  classical
  simp only [primeSquareIndices, Finset.mem_filter]
  have hs : IsPrimeSquare 4 := ⟨2, Nat.prime_two, by norm_num⟩
  simp only [hs, and_true]
  have h := prime_square_cutoff_iff A 2 Nat.prime_two
  norm_num only [show (2 : ℕ) ^ 2 = 4 by norm_num, Nat.cast_ofNat] at h
  rw [h]
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 2)).symm

/-- The original weight at `p^2` is exactly `log p / p`, with the original normalized correlation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variantf50f3a6081229a5621eb9e3f73447f4c79742dea95d2eabeeaf2e1d08558e128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceStatements/Variantf50f3a6081229a5621eb9e3f73447f4c79742dea95d2eabeeaf2e1d08558e128.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32e2352b65dbc5b201fa412522fbece6ba62fbd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
