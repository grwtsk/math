# boundedDirichletConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a3a250b135d12d2a40f7df15ebbc290f05d8d05e2a08fe50ed268a321033093",
  "kind": "def",
  "lexical_name": "boundedDirichletConv",
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
  "slug": "boundeddirichletconv--27127efd2415e2c1bcfe48d6",
  "source": {
    "blob": "aea7fc0e04060013a0d9ff811928a0c297ddaf5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 50,
    "path": "GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27127efd2415e2c1bcfe48d6a1da56b5ca2530e1257456896904f1fe8962df13",
  "verification": {
    "reference": "docs/verification/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a3a250b135d12d2a40f7df15ebbc290f05d8d05e2a08fe50ed268a321033093`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundedDirichletConv
    [Semiring R]
    (N : Nat)
    (f g : ArithFn R) : ArithFn R :=
  fun n =>
    ∑ d ∈ Nat.divisors n,
      if d ≤ N ∧ n / d ≤ N then f d * g (n / d) else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirichletPolynomialProduct/Variantb5e58696ed2935398f278d5bff9046b894e01f0be6e512405fdfeb05087c4342.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aea7fc0e04060013a0d9ff811928a0c297ddaf5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
