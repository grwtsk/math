# GRewriteLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c668b62a8a8a5d0504b12731240bd88f90608f8bc58399fb003252e3c2385b55",
  "kind": "structure",
  "lexical_name": "GRewriteLemma",
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
  "slug": "grewritelemma--daadd822a045727ba3e51e1a",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daadd822a045727ba3e51e1a396260f998054c73667df25103fd5a8f7280f7c3",
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

Occurrence: `declaration:c668b62a8a8a5d0504b12731240bd88f90608f8bc58399fb003252e3c2385b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GRewriteLemma where
  /-- Whether the lemma rewrites right-to-left (i.e. whether it has a `←`). -/
  symm : Bool
  /-- The value -/
  proof : Expr
  /-- The type -/
  type : Expr
  /-- The key used to determine where to attempt rewriting. -/
  index : HeadIndex × Nat
  /-- The metavariables that appear in the lemma. We do the slightly dodgy thing of
  modifying their local context in order to be able to unify with bound variables. -/
  mvarIds : Array (MVarId × Array LocalDecl)

/-- The monad used for `grw`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
