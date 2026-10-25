# bitblast_Inv_of_Inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5884f51eb51841226b74a34940d1ae21b6c14046",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c52e1479a6c7d46406ac77820a25c62ed5a38fafa954f5468359ff99514230c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8dd98305-9e40-e137-8bb8-de32f1a51363",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56d60b90-e41a-3ea5-d26a-ffd9bc17cba8",
  "kind": "theorem",
  "lexical_name": "bitblast_Inv_of_Inv",
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
  "slug": "bitblast-inv-of-inv--6c1cbd3a12022c7d9e54bd04",
  "source": {
    "blob": "5884f51eb51841226b74a34940d1ae21b6c14046",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant5c52e1479a6c7d46406ac77820a25c62ed5a38fafa954f5468359ff99514230c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c1cbd3a12022c7d9e54bd04764277ca164839237cb6c21f2dc348f409b804e2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant5c52e1479a6c7d46406ac77820a25c62ed5a38fafa954f5468359ff99514230c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56d60b90-e41a-3ea5-d26a-ffd9bc17cba8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitblast_Inv_of_Inv (input : BVExpr.WithCache BVPred aig)
    (hinv : BVExpr.Cache.Inv assign aig input.cache) :
    BVExpr.Cache.Inv assign (bitblast aig input).result.val.aig (bitblast aig input).cache := by
  unfold bitblast
  dsimp only
  split
  next op _ _ =>
    cases op
    · dsimp only
      apply BVExpr.Cache.Inv_cast
      · apply AIG.LawfulOperator.isPrefix_aig (f := mkEq)
      · apply BVExpr.bitblast_Inv_of_Inv
        apply BVExpr.bitblast_Inv_of_Inv
        exact hinv
    · dsimp only
      apply BVExpr.Cache.Inv_cast
      · apply AIG.LawfulOperator.isPrefix_aig (f := mkUlt)
      · apply BVExpr.bitblast_Inv_of_Inv
        apply BVExpr.bitblast_Inv_of_Inv
        exact hinv
  · dsimp only
    apply BVExpr.Cache.Inv_cast
    · apply IsPrefix.rfl
    · apply BVExpr.bitblast_Inv_of_Inv
      exact hinv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant5c52e1479a6c7d46406ac77820a25c62ed5a38fafa954f5468359ff99514230c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pred/Variant5c52e1479a6c7d46406ac77820a25c62ed5a38fafa954f5468359ff99514230c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5884f51eb51841226b74a34940d1ae21b6c14046` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
