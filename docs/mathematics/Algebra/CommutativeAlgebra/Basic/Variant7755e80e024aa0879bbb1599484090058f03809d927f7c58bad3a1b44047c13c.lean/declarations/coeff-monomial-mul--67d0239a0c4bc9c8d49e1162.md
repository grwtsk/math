# coeff_monomial_mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6638592f-7335-9732-c933-9c41c556ef9f",
  "kind": "theorem",
  "lexical_name": "coeff_monomial_mul'",
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
  "slug": "coeff-monomial-mul--67d0239a0c4bc9c8d49e1162",
  "source": {
    "blob": "849009648828f5b2ab8d7c89e4122865246e04b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 798,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7755e80e024aa0879bbb1599484090058f03809d927f7c58bad3a1b44047c13c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67d0239a0c4bc9c8d49e1162ac61daa065d57fa3982d6c0ce30123b6aa976821",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant7755e80e024aa0879bbb1599484090058f03809d927f7c58bad3a1b44047c13c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6638592f-7335-9732-c933-9c41c556ef9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_monomial_mul' (m) (s : σ →₀ ℕ) (r : R) (p : MvPolynomial σ R) :
    coeff m (monomial s r * p) = if s ≤ m then r * coeff (m - s) p else 0 := by
  -- note that if we allow `R` to be non-commutative we will have to duplicate the proof above.
  rw [mul_comm, mul_comm r]
  exact coeff_mul_monomial' _ _ _ _
#align mv_polynomial.coeff_monomial_mul' MvPolynomial.coeff_monomial_mul'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant7755e80e024aa0879bbb1599484090058f03809d927f7c58bad3a1b44047c13c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7755e80e024aa0879bbb1599484090058f03809d927f7c58bad3a1b44047c13c.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849009648828f5b2ab8d7c89e4122865246e04b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
