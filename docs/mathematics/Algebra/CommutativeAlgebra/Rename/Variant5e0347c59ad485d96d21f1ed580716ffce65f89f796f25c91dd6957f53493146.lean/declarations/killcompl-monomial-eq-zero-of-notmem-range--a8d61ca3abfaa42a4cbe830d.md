# killCompl_monomial_eq_zero_of_notMem_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:985a06eb-7f6b-91ed-f3b4-6eb625dff468",
  "kind": "lemma",
  "lexical_name": "killCompl_monomial_eq_zero_of_notMem_range",
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
  "slug": "killcompl-monomial-eq-zero-of-notmem-range--a8d61ca3abfaa42a4cbe830d",
  "source": {
    "blob": "ae23a9ffa0fbeae21e3557243c178bc58766e719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d61ca3abfaa42a4cbe830d2432365102fbdd4876f7354c51a2a4c3dc9d81a9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:985a06eb-7f6b-91ed-f3b4-6eb625dff468`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma killCompl_monomial_eq_zero_of_notMem_range {s : τ →₀ ℕ} (c : R)
    {a : τ} (ha : a ∈ s.support) (hs : a ∉ Set.range f) :
    (monomial s c).killCompl hf = 0 := by
  rw [killCompl, aeval_monomial, Finsupp.prod]
  apply mul_eq_zero_of_right
  apply Finset.prod_eq_zero ha
  simp [hs, zero_pow (Finsupp.mem_support_iff.mp ha)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant5e0347c59ad485d96d21f1ed580716ffce65f89f796f25c91dd6957f53493146.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae23a9ffa0fbeae21e3557243c178bc58766e719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
