# smul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e891b23baf36c10b19f9c68224c7cee859ddfb07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/552e5e6391adeb5a052452e34617da22558d8c2eff0d3285bc7224ea81c12767.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a92744f-8059-a6bf-67bf-00490fd13632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f070a94-c7e8-19f3-4758-c35af61d731d",
  "kind": "theorem",
  "lexical_name": "smul_apply",
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
  "slug": "smul-apply--452c1f5439521c04aec3b2d6",
  "source": {
    "blob": "e891b23baf36c10b19f9c68224c7cee859ddfb07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 177,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Module/Variant552e5e6391adeb5a052452e34617da22558d8c2eff0d3285bc7224ea81c12767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452c1f5439521c04aec3b2d6c92d273ea5741e8d1157412d89087f6652518630",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Module/Variant552e5e6391adeb5a052452e34617da22558d8c2eff0d3285bc7224ea81c12767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f070a94-c7e8-19f3-4758-c35af61d731d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_apply (f : R[X]) (g : PolynomialModule R M) (n : ℕ) :
    (f • g) n = ∑ x in Finset.Nat.antidiagonal n, f.coeff x.1 • g x.2 := by
  induction' f using Polynomial.induction_on' with p q hp hq f_n f_a
  · rw [add_smul, Finsupp.add_apply, hp, hq, ← Finset.sum_add_distrib]
    congr
    ext
    rw [coeff_add, add_smul]
  · rw [Finset.Nat.sum_antidiagonal_eq_sum_range_succ fun i j => (monomial f_n f_a).coeff i • g j,
      monomial_smul_apply]
    simp_rw [Polynomial.coeff_monomial, ← Finset.mem_range_succ_iff]
    rw [← Finset.sum_ite_eq (Finset.range (Nat.succ n)) f_n (fun x => f_a • g (n - x))]
    congr
    ext x
    split_ifs
    exacts [rfl, (zero_smul R _).symm]
#align polynomial_module.smul_apply PolynomialModule.smul_apply

/-- `PolynomialModule R R` is isomorphic to `R[X]` as an `R[X]` module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Module/Variant552e5e6391adeb5a052452e34617da22558d8c2eff0d3285bc7224ea81c12767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Module/Variant552e5e6391adeb5a052452e34617da22558d8c2eff0d3285bc7224ea81c12767.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e891b23baf36c10b19f9c68224c7cee859ddfb07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
