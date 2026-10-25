# evalCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d80c6151179bf955e7dc37af99d883fcfcaa805daffbab0dd8170c54cc2d30d",
  "kind": "def",
  "lexical_name": "evalCast",
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
  "slug": "evalcast--7fea4ec425ac483defdf160b",
  "source": {
    "blob": "bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 867,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fea4ec425ac483defdf160b6ba5ae25949e4d694defd11826e3d7b7af86e81f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d80c6151179bf955e7dc37af99d883fcfcaa805daffbab0dd8170c54cc2d30d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalCast : NormNum.Result e → Option (Result (ExSum sα) e)
  | .isNat _ (.lit (.natVal 0)) p => do
    assumeInstancesCommute
    pure ⟨_, .zero, q(cast_zero $p)⟩
  | .isNat _ lit p => do
    assumeInstancesCommute
    pure ⟨_, (ExProd.mkNat sα lit.natLit!).2.toSum, (q(cast_pos $p) :)⟩
  | .isNegNat rα lit p =>
    pure ⟨_, (ExProd.mkNegNat _ rα lit.natLit!).2.toSum, (q(cast_neg $p) : Expr)⟩
  | .isRat dα q n d p =>
    pure ⟨_, (ExProd.mkRat sα dα q n d q(IsRat.den_nz $p)).2.toSum, (q(cast_rat $p) : Expr)⟩
  | _ => none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
