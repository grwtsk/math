# IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d34b37e-5168-ba81-f1fb-62a0fd874bd4",
  "kind": "lemma",
  "lexical_name": "IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace",
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
  "slug": "isfinitelysemisimple-maxgeneigenspace-eq-eigenspace--88816a3f4d7aedeac46aba56",
  "source": {
    "blob": "8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88816a3f4d7aedeac46aba5646b22dd568f73b8a70329a82c6f2c689a273bacc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d34b37e-5168-ba81-f1fb-62a0fd874bd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFinitelySemisimple.maxGenEigenspace_eq_eigenspace
    (hf : f.IsFinitelySemisimple) (μ : R) :
    f.maxGenEigenspace μ = f.eigenspace μ :=
  hf.genEigenspace_eq_eigenspace μ ENat.top_pos

/-- A finitely-semisimple endomorphism is triangularizable if and only if it is diagonalizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant2d1ea33434749d8ccec11da61b80090ae5f12ba194cd937c07f98edf217f9320.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8763f6e48519f6aa5d4bb205de3f5ab123ef2ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
