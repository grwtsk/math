# dirichletPolynomialComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3deccbcec053e7460459ad07cf99912a76a6b3fd15b67a5ba75c6c329d2e486c",
  "kind": "def",
  "lexical_name": "dirichletPolynomialComplex",
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
  "slug": "dirichletpolynomialcomplex--8c6837786ecadd8e576e873a",
  "source": {
    "blob": "ecf1ece28faea26acd7afba60a0f028d3d45d43a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c6837786ecadd8e576e873a46783dd8f3c4cebb0543d5fe694381a646fb27dc",
  "verification": {
    "reference": "docs/verification/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3deccbcec053e7460459ad07cf99912a76a6b3fd15b67a5ba75c6c329d2e486c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dirichletPolynomialComplex
    (a : ArithFn ℂ)
    (σ : Real)
    (N : Nat) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N,
    a n * ((posWeightReal σ n : Real) : ℂ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5ae574284816f3ec7bdf33557fc190dfa55baa690267b2c192d992b8ab8d5cd.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf1ece28faea26acd7afba60a0f028d3d45d43a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
