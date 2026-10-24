# exp_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45e919ff-03e9-453b-6036-2b22a65041d3",
  "kind": "theorem",
  "lexical_name": "exp_nsmul",
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
  "slug": "exp-nsmul--8aff3cf63b292e406e43a5e5",
  "source": {
    "blob": "bfb8819bc84e5484d54cf62878e855dcc8eeee44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aff3cf63b292e406e43a5e544b90fdee5324e36d949b0a4b6c8100c34749667",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45e919ff-03e9-453b-6036-2b22a65041d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem exp_nsmul (n : ℕ) (A : Matrix m m 𝔸) : exp 𝕂 (n • A) = exp 𝕂 A ^ n := by
  letI : SeminormedRing (Matrix m m 𝔸) := Matrix.linftyOpSemiNormedRing
  letI : NormedRing (Matrix m m 𝔸) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra 𝕂 (Matrix m m 𝔸) := Matrix.linftyOpNormedAlgebra
  exact exp_nsmul n A
#align matrix.exp_nsmul Matrix.exp_nsmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8819bc84e5484d54cf62878e855dcc8eeee44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
