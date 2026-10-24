# subDownLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:227f3931216277c3740da2261a812560cdb331dde0cca033cf28edb3ce20b9bf",
  "kind": "abbrev",
  "lexical_name": "subDownLeft",
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
  "slug": "subdownleft--ac6cf6141ce5e327c6c731c7",
  "source": {
    "blob": "79ae123d0c062f4ceaf094c7ec80bedfc7af43bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 507,
    "line": 496,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant375ff95499471df708fdfdc7818e8bf852f1c55ba27114b978a0b062d176b6e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac6cf6141ce5e327c6c731c770c189d357541425d5c0aba375b5b89d25e776b6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant375ff95499471df708fdfdc7818e8bf852f1c55ba27114b978a0b062d176b6e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:227f3931216277c3740da2261a812560cdb331dde0cca033cf28edb3ce20b9bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–507.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev subDownLeft {d u l r : Nat} (A : Matrix (Fin (u + d)) (Fin (l + r)) α) :
    Matrix (Fin d) (Fin l) α :=
  subDown (subLeft A)

section RowCol

/-- For an `m × n` `α`-matrix `A`, `A.row i` is the `i`th row of `A` as a vector in `n → α`.
`A.row` is defeq to `A`, but explicitly refers to the 'row function' of `A`
while avoiding defeq abuse and noisy eta-expansions,
such as in expressions like `Set.Injective A.row` and `Set.range A.row`.
(Note 2025-04-07 : the identifier `Matrix.row` used to refer to a matrix with all rows equal;
this is now called `Matrix.replicateRow`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant375ff95499471df708fdfdc7818e8bf852f1c55ba27114b978a0b062d176b6e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant375ff95499471df708fdfdc7818e8bf852f1c55ba27114b978a0b062d176b6e9.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ae123d0c062f4ceaf094c7ec80bedfc7af43bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
