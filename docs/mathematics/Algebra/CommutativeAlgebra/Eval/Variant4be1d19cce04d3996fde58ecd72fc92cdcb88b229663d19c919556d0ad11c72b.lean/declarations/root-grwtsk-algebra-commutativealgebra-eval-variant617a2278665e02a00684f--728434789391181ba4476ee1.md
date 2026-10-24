# _root_.GRWTSK.Algebra.CommutativeAlgebra.Eval.Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.Algebra.adjoin_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b934f08-4f12-ba42-8948-c3c00d8a79df",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.Eval.Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.Algebra.adjoin_eq_range",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-eval-variant617a2278665e02a00684f--728434789391181ba4476ee1",
  "source": {
    "blob": "e3415bd1944628128bec1d8d3f86e52132e60427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 721,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728434789391181ba4476ee1470e51bfcce1b6ab8c4ef98752184fd583df45d4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b934f08-4f12-ba42-8948-c3c00d8a79df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.Eval.Variant617a2278665e02a00684f6f17b96f9925a473c54e456fc53eb6dae299c0fd89f.Algebra.adjoin_eq_range (s : Set S₁) :
    Algebra.adjoin R s = (MvPolynomial.aeval ((↑) : s → S₁)).range := by
  rw [← Algebra.adjoin_range_eq_range_aeval, Subtype.range_coe]

end Aeval

section Algebra

variable [Algebra R S₁] (g : σ → S₁)

variable (R) in
/-- `MvPolynomial.eval₂ (algebraMap R S) g` as an `R`-algebra homomorphism. -/
@[deprecated aeval (since := "2026-07-22")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Eval/Variant4be1d19cce04d3996fde58ecd72fc92cdcb88b229663d19c919556d0ad11c72b.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3415bd1944628128bec1d8d3f86e52132e60427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
