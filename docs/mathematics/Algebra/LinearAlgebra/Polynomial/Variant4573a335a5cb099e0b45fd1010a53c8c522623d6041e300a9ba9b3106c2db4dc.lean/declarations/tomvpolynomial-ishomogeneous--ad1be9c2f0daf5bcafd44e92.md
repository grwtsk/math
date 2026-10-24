# toMvPolynomial_isHomogeneous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f609915dc38e950cba7e449fbaa666a399120749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c860779-f0ed-1df2-3ed6-a661d377a484",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76455582-6f6a-3a52-9b6a-4241ebc41ce4",
  "kind": "lemma",
  "lexical_name": "toMvPolynomial_isHomogeneous",
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
  "slug": "tomvpolynomial-ishomogeneous--ad1be9c2f0daf5bcafd44e92",
  "source": {
    "blob": "f609915dc38e950cba7e449fbaa666a399120749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad1be9c2f0daf5bcafd44e929cd56219d53d457feba360dda3b396f5f6d9b27c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76455582-6f6a-3a52-9b6a-4241ebc41ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toMvPolynomial_isHomogeneous (M : Matrix m n R) (i : m) :
    (M.toMvPolynomial i).IsHomogeneous 1 := by
  apply MvPolynomial.IsHomogeneous.sum
  rintro j -
  apply MvPolynomial.isHomogeneous_monomial _ _
  simp [Finsupp.degree, Finsupp.support_single_ne_zero _ one_ne_zero, Finset.sum_singleton,
    Finsupp.single_eq_same]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Polynomial/Variant4573a335a5cb099e0b45fd1010a53c8c522623d6041e300a9ba9b3106c2db4dc.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f609915dc38e950cba7e449fbaa666a399120749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
