# prime_square_cutoff_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59c3b1cf9fce16afab31519ad3ffb151952b401d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6d6a7db395174f95ec3e9881f4f4f3feac08ad18ef4a78ead6229629b3e8f6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fde0ecf3-6a7e-b221-a75d-c2a28939c236",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff2933f-4ba3-eb2a-9064-7b87f2eaf0a3",
  "kind": "theorem",
  "lexical_name": "prime_square_cutoff_iff",
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
  "slug": "prime-square-cutoff-iff--80cb47299a813983670efe71",
  "source": {
    "blob": "59c3b1cf9fce16afab31519ad3ffb151952b401d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variante6d6a7db395174f95ec3e9881f4f4f3feac08ad18ef4a78ead6229629b3e8f6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80cb47299a813983670efe715a7b5348a5d5c63e041ea25d39f58e17ac053b98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variante6d6a7db395174f95ec3e9881f4f4f3feac08ad18ef4a78ead6229629b3e8f6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff2933f-4ba3-eb2a-9064-7b87f2eaf0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_cutoff_iff (A : ℝ) (p : ℕ) (hp : p.Prime) :
    p ^ 2 ∈ Cutoff.primeIndices A ↔ (p : ℝ) < Real.exp A := by
  rw [Cutoff.mem_primeIndices_iff]
  have hp2 : 2 ≤ p ^ 2 := by nlinarith [hp.two_le]
  have hexp : Real.exp (2 * A) = (Real.exp A) ^ 2 := by
    rw [two_mul, Real.exp_add, pow_two]
  simp only [hp2, true_and, Nat.cast_pow, hexp]
  exact sq_lt_sq₀ (Nat.cast_nonneg p) (Real.exp_pos A).le

/-- There is no multiplicity factor in the finite reindexing: squaring is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variante6d6a7db395174f95ec3e9881f4f4f3feac08ad18ef4a78ead6229629b3e8f6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSource/Variante6d6a7db395174f95ec3e9881f4f4f3feac08ad18ef4a78ead6229629b3e8f6f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c3b1cf9fce16afab31519ad3ffb151952b401d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
