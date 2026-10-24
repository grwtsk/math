# apply_aeval_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e7d6e8325e01d14c586caa74108c64aaa12ec29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89e65169-eba3-1842-d7d2-7873f0c14133",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d3e3617-2aee-c4b7-7516-6ab7e85f674b",
  "kind": "theorem",
  "lexical_name": "apply_aeval_eq'",
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
  "slug": "apply-aeval-eq--bcd272d776cdbf117e48a787",
  "source": {
    "blob": "2e7d6e8325e01d14c586caa74108c64aaa12ec29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd272d776cdbf117e48a787d9b910dcae5c03f44318ac258797f77e2122e0a4",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d3e3617-2aee-c4b7-7516-6ab7e85f674b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_aeval_eq' (d' : Derivation R B M') (f : M →ₗ[A] M')
    (h : ∀ a, f (d a) = d' (algebraMap A B a)) (x : B) (p : A[X]) :
    d' (aeval x p) = PolynomialModule.eval x (PolynomialModule.map B f (d.mapCoeffs p)) +
      aeval x (derivative p) • d' x := by
  induction p using Polynomial.induction_on' with
  | add => simp_all only [map_add, add_smul]; abel
  | monomial =>
    simp only [aeval_monomial, leibniz, leibniz_pow, mapCoeffs_monomial,
      PolynomialModule.map_single, PolynomialModule.eval_single, derivative_monomial, map_mul,
      _root_.map_natCast, h]
    rw [add_comm, ← smul_smul, ← smul_smul, Nat.cast_smul_eq_nsmul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e7d6e8325e01d14c586caa74108c64aaa12ec29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
