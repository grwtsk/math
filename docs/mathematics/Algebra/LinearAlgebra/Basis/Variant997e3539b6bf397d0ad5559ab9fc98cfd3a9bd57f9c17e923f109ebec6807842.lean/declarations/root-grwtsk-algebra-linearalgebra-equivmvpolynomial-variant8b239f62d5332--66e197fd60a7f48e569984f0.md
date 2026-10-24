# _root_.GRWTSK.Algebra.LinearAlgebra.EquivMvPolynomial.Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.Module.Basis.symmetricAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8234712186e5b7aade19466a6de2462b4a2e056024c6154739594e6368b2404",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.EquivMvPolynomial.Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.Module.Basis.symmetricAlgebra",
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
  "slug": "root-grwtsk-algebra-linearalgebra-equivmvpolynomial-variant8b239f62d5332--66e197fd60a7f48e569984f0",
  "source": {
    "blob": "f32079a9a01b9539384ff8f1666b6d48099ebcfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant997e3539b6bf397d0ad5559ab9fc98cfd3a9bd57f9c17e923f109ebec6807842.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66e197fd60a7f48e569984f0922fc098f44d35b251a1a0b06faa0fac6d5f7186",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant997e3539b6bf397d0ad5559ab9fc98cfd3a9bd57f9c17e923f109ebec6807842.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8234712186e5b7aade19466a6de2462b4a2e056024c6154739594e6368b2404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Algebra.LinearAlgebra.EquivMvPolynomial.Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.Module.Basis.symmetricAlgebra (b : Basis κ R M) :
    Basis (κ →₀ ℕ) R (SymmetricAlgebra R M) :=
  (MvPolynomial.basisMonomials κ R).map <| (SymmetricAlgebra.equivMvPolynomial b).symm.toLinearEquiv

/-- `SymmetricAlgebra R M` is free when `M` is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant997e3539b6bf397d0ad5559ab9fc98cfd3a9bd57f9c17e923f109ebec6807842.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant997e3539b6bf397d0ad5559ab9fc98cfd3a9bd57f9c17e923f109ebec6807842.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32079a9a01b9539384ff8f1666b6d48099ebcfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
