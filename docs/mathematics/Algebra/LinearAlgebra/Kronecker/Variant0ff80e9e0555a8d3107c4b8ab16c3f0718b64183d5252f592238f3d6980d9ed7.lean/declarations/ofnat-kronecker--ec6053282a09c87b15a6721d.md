# ofNat_kronecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a08e520c-4419-da2f-1116-6fcfa98bad5c",
  "kind": "theorem",
  "lexical_name": "ofNat_kronecker",
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
  "slug": "ofnat-kronecker--ec6053282a09c87b15a6721d",
  "source": {
    "blob": "d1fa7b7d4db2412d7429f8df6820d03d652dc307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 352,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec6053282a09c87b15a6721dc873f199c243f8c6d0252e29e6b5f7fb79fdf0d3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a08e520c-4419-da2f-1116-6fcfa98bad5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofNat_kronecker [NonAssocSemiring α] [DecidableEq l] (a : ℕ) [a.AtLeastTwo]
    (B : Matrix m n α) : (ofNat(a) : Matrix l l α) ⊗ₖ B =
      Matrix.reindex (.prodComm _ _) (.prodComm _ _)
        (blockDiagonal fun _ => (ofNat(a) : α) • B) :=
  diagonal_kronecker _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variant0ff80e9e0555a8d3107c4b8ab16c3f0718b64183d5252f592238f3d6980d9ed7.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1fa7b7d4db2412d7429f8df6820d03d652dc307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
