# LinearIndependent.of_pairwise_dual_eq_zero_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f832817-4a35-1a1a-4492-6e3f45d1df3a",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.of_pairwise_dual_eq_zero_one",
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
  "slug": "linearindependent-of-pairwise-dual-eq-zero-one--fea197fe2322d8d2a68eb211",
  "source": {
    "blob": "1866d14ae75ca55e34b5c2e7b228bca19b7d8f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 538,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea197fe2322d8d2a68eb211fa853ed025925776673e4821d9e6902337a7aa7b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f832817-4a35-1a1a-4492-6e3f45d1df3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.of_pairwise_dual_eq_zero_one (v : ι → M) (f : ι → Dual R M)
    (h1 : Pairwise fun i j ↦ f i (v j) = 0)
    (h2 : ∀ i, (f i) (v i) = 1) :
    LinearIndependent R v := by
  refine linearIndependent_iff'.mpr fun s g hrel i hi ↦ ?_
  have aux (j : ι) (hjs : j ∈ s) (hji : j ≠ i) : g j * (f i) (v j) = 0 := by simp [h1 hji.symm]
  simpa [s.sum_eq_single i aux (by lia), h2 i] using congr_arg (f i) hrel

end Module

open Finsupp in
/-- A linearly independent family of vectors `f` remains linearly independent when we substitute one
of the terms with a vector `m` provided there exists a non-zero divisor `r`, such that `r • m`
belongs to the span of `f` with non-zero-divisor coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Varianta9447120df265a49b9bca7f9b3ec61932b38e326c87f7ba1e5dd856c0cfa8d62.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1866d14ae75ca55e34b5c2e7b228bca19b7d8f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
