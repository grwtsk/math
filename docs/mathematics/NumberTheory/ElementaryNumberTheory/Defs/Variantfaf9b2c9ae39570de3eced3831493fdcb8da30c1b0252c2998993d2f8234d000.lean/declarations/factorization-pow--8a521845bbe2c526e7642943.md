# factorization_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17890e9357a489f7db4e3ff9e877904ecd852b22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/faf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac4632ba-f18d-4c12-9358-4c798c461894",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aecc7f11-2113-f326-b10a-11801d42a0c3",
  "kind": "theorem",
  "lexical_name": "factorization_pow",
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
  "slug": "factorization-pow--8a521845bbe2c526e7642943",
  "source": {
    "blob": "17890e9357a489f7db4e3ff9e877904ecd852b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 172,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a521845bbe2c526e76429438cf5a8ad19e5741770bca71047e6d6a9201655fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aecc7f11-2113-f326-b10a-11801d42a0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_pow (n k : ℕ) : factorization (n ^ k) = k • n.factorization := by
  induction' k with k ih; · simp
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp
  rw [Nat.pow_succ, mul_comm, factorization_mul hn (pow_ne_zero _ hn), ih,
    add_smul, one_smul, add_comm]

/-! ## Lemmas about factorizations of primes and prime powers -/


/-- The only prime factor of prime `p` is `p` itself, with multiplicity `1` -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variantfaf9b2c9ae39570de3eced3831493fdcb8da30c1b0252c2998993d2f8234d000.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17890e9357a489f7db4e3ff9e877904ecd852b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
