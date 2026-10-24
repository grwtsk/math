# column_factor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ffcfbbd-9928-c6a3-3b7c-a6530fc1e8ab",
  "kind": "theorem",
  "lexical_name": "column_factor",
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
  "slug": "column-factor--62f7d7cd47f7cb80b5d64909",
  "source": {
    "blob": "3e55a8b760ba59372b97bf820104905d63ab7dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62f7d7cd47f7cb80b5d649093a64686ae674682af428752a0de0fdbf2a01de78",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ffcfbbd-9928-c6a3-3b7c-a6530fc1e8ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem column_factor (A B : ℤ) (hB : B≠0) (N k : ℕ) :
    ∃ g : ℚ[X], framePolynomial A B N k=X^k*g ∧
      g.coeff 0=(1/(B : ℚ))^(k/2) := by
  obtain ⟨h,hh⟩ := branch_square_dvd A B N
  have hc : h.coeff 0=1/(B : ℚ) := by
    have hs := branch_second A B hB N
    rw [hh] at hs
    exact (Polynomial.coeff_X_pow_mul h 2 0).symm.trans hs
  refine ⟨h^(k/2),?_,?_⟩
  · have hk : 2*(k/2)+k%2=k := by omega
    calc
      framePolynomial A B N k = X^(2*(k/2)+k%2)*h^(k/2) := by
        simp only [framePolynomial,hh,mul_pow,pow_mul,pow_add]
        ring
      _ = X^k*h^(k/2) := by rw [hk]
  · change Polynomial.constantCoeff (h^(k/2))=(1/(B : ℚ))^(k/2)
    rw [map_pow]
    exact congrArg (fun z : ℚ => z^(k/2)) hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassImageFrame.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e55a8b760ba59372b97bf820104905d63ab7dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
