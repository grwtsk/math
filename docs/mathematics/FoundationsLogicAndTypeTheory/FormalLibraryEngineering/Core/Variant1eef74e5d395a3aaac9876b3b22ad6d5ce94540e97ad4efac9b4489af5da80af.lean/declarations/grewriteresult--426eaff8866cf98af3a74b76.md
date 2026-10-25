# GRewriteResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e68222dda4dad78bebb2b7c44434318d3c65b09e66c42f7ed7efcbc6b4fc886",
  "kind": "structure",
  "lexical_name": "GRewriteResult",
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
  "slug": "grewriteresult--426eaff8866cf98af3a74b76",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:426eaff8866cf98af3a74b762e21db875bbecbcc8a1be6495b049a8cdea11636",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e68222dda4dad78bebb2b7c44434318d3c65b09e66c42f7ed7efcbc6b4fc886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure GRewriteResult where
  /-- The rewritten expression -/
  eNew : Expr
  /-- The proof of the implication. The direction depends on the argument `forwardImp`. -/
  impProof : Expr
  /-- The new side goals -/
  mvarIds : List MVarId -- new goals
  /-- The outermost local context in which the rewrite makes sense. If the rewrite does not involve
  bound variables, this is `none`. This is used for fixing the generated info tree, so that the
  "Expected Type" is displayed correctly. -/
  lctx? : Option LocalContext

/-- Configures the behavior of the `rewrite` and `rw` tactics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
