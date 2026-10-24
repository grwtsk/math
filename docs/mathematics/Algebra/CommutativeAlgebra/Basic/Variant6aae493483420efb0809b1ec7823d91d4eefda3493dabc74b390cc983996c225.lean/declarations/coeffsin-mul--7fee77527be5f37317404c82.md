# coeffsIn_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8897230-1e31-90e7-c93e-3d716692b7de",
  "kind": "lemma",
  "lexical_name": "coeffsIn_mul",
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
  "slug": "coeffsin-mul--7fee77527be5f37317404c82",
  "source": {
    "blob": "d0d47e09a9ebac442d472b1e4aca5dd6045fca98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1059,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fee77527be5f37317404c823c244e2fcd8eb7e55ac301c2975d9e88758f9554",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8897230-1e31-90e7-c93e-3d716692b7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1059–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeffsIn_mul (M N : Submodule R S) : coeffsIn σ (M * N) = coeffsIn σ M * coeffsIn σ N := by
  classical
  refine le_antisymm (coeffsIn_le.2 ?_) ?_
  · intro r hr s
    induction hr using Submodule.mul_induction_on' with
    | mem_mul_mem m hm n hn =>
      rw [← add_zero s, ← monomial_mul_monomial]
      apply Submodule.mul_mem_mul <;> simpa
    | add x _ y _ hx hy =>
      simpa [map_add] using add_mem hx hy
  · rw [Submodule.mul_le]
    intro x hx y hy k
    rw [MvPolynomial.coeff_mul]
    exact sum_mem fun c hc ↦ Submodule.mul_mem_mul (hx _) (hy _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant6aae493483420efb0809b1ec7823d91d4eefda3493dabc74b390cc983996c225.lean#L1059).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0d47e09a9ebac442d472b1e4aca5dd6045fca98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
