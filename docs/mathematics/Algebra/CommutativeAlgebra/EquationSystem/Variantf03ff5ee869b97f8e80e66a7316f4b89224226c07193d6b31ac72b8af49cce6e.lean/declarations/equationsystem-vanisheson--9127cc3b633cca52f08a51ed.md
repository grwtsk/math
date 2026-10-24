# EquationSystem.VanishesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffd7c1e39a60b5749251ab693e89fd07cca062c413f8981237dc909d1ae371e1",
  "kind": "def",
  "lexical_name": "EquationSystem.VanishesOn",
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
  "slug": "equationsystem-vanisheson--9127cc3b633cca52f08a51ed",
  "source": {
    "blob": "93ce60b0f519a4899ab01d78abb23e050c91dbde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9127cc3b633cca52f08a51ed8f92e4faa601e02cb586ac51bcd2ad8b2ae05b47",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffd7c1e39a60b5749251ab693e89fd07cca062c413f8981237dc909d1ae371e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EquationSystem.VanishesOn
    {Variable : Type u} {K : Type v} [CommSemiring K]
    (system : EquationSystem Variable K)
    (polynomial : MvPolynomial Variable K) : Prop :=
  ∀ solution : system.SolutionSpace,
    MvPolynomial.eval solution.coordinates polynomial = 0

/-- Pointwise equality of coordinates is equality in the solution space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/EquationSystem/Variantf03ff5ee869b97f8e80e66a7316f4b89224226c07193d6b31ac72b8af49cce6e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ce60b0f519a4899ab01d78abb23e050c91dbde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
