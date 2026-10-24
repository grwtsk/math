# KaehlerDifferential.mvPolynomialBasis_repr_D_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d8e5cb5-14cf-02b8-be5b-4d7d52041a2c",
  "kind": "lemma",
  "lexical_name": "KaehlerDifferential.mvPolynomialBasis_repr_D_X",
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
  "slug": "kaehlerdifferential-mvpolynomialbasis-repr-d-x--eb378b881566896d326ff9b4",
  "source": {
    "blob": "822d42f7b28db2b3977d1e565dbe45bb93c4b1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb378b881566896d326ff9b424cc4c62d83c8bde71102a67c66251c5c71ee7c5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d8e5cb5-14cf-02b8-be5b-4d7d52041a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KaehlerDifferential.mvPolynomialBasis_repr_D_X (σ) (i) :
    (mvPolynomialBasis R σ).repr (D _ _ (.X i)) = Finsupp.single i 1 := by
  simp [mvPolynomialBasis_repr_D]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Varianta725179be501def8faf59af5b2ed59db3c5e2ee03b2c34cfaa3807b456adc563.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `822d42f7b28db2b3977d1e565dbe45bb93c4b1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
