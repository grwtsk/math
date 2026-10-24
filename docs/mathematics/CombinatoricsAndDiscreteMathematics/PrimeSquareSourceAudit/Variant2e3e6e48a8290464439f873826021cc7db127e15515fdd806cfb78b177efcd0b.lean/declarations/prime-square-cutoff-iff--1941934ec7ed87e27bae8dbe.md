# prime_square_cutoff_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25317ae5-1da0-4126-0df5-d3cb9bef0d65",
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
  "slug": "prime-square-cutoff-iff--1941934ec7ed87e27bae8dbe",
  "source": {
    "blob": "7f22fb316265e3c42cdb9559ce61ad31009d28c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1941934ec7ed87e27bae8dbe4ba48bc772bdb1ec476aff26fa93e7f08f3efa37",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25317ae5-1da0-4126-0df5-d3cb9bef0d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeSquareSourceAudit/Variant2e3e6e48a8290464439f873826021cc7db127e15515fdd806cfb78b177efcd0b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f22fb316265e3c42cdb9559ce61ad31009d28c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
