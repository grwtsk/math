# wittPolynomial_vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ed5d38e-9576-97fd-55b1-b16e3c729eda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c52f095b-d1d8-5721-7707-569df08e5358",
  "kind": "theorem",
  "lexical_name": "wittPolynomial_vars",
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
  "slug": "wittpolynomial-vars--5bd8da5a7a2e43070529a37d",
  "source": {
    "blob": "bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 174,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd8da5a7a2e43070529a37d6c5c425f2d5ddf909883cee90aef8c73cb67d057",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52f095b-d1d8-5721-7707-569df08e5358`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittPolynomial_vars [CharZero R] (n : ℕ) : (wittPolynomial p R n).vars = range (n + 1) := by
  have : ∀ i, (monomial (Finsupp.single i (p ^ (n - i))) ((p : R) ^ i)).vars = {i} := by
    intro i
    refine' vars_monomial_single i (pow_ne_zero _ hp.1) _
    rw [← Nat.cast_pow, Nat.cast_ne_zero]
    exact pow_ne_zero i hp.1
  rw [wittPolynomial, vars_sum_of_disjoint]
  · simp only [this, biUnion_singleton_eq_self]
  · simp only [this]
    intro a b h
    apply disjoint_singleton_left.mpr
    rwa [mem_singleton]
#align witt_polynomial_vars wittPolynomial_vars

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variantb19830b26384625540b82322d63dd95e669c06c5f0cff73c22a3fad4c549f02f.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc2e12d00e106e36f43cc155b8cf3e46dbfc9a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
