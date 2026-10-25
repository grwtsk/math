# MVarId.congrImplies?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1910c938866845e752d9c5aa6b4f5f4e3c9aeaf30fe896f70704b5b604864ae7",
  "kind": "def",
  "lexical_name": "MVarId.congrImplies?",
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
  "slug": "mvarid-congrimplies--9bf9ed9876d5cb6680ad2146",
  "source": {
    "blob": "6cc7f548c4cfd8720a195828de6829625d036ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bf9ed9876d5cb6680ad214651320436296eff5aaafbb4f98e4a4110f56bd93b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1910c938866845e752d9c5aa6b4f5f4e3c9aeaf30fe896f70704b5b604864ae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarId.congrImplies? (mvarId : MVarId) : MetaM (Option (List MVarId)) :=
  observing? do
    let mvarId₁ :: mvarId₂ :: _ ← mvarId.apply (← mkConstWithFreshMVarLevels ``implies_congr)
      | throwError "Internal error: Expected at least two goals after applying `{.ofConstName ``implies_congr}`, but unexpectedly found fewer"
    return [mvarId₁, mvarId₂]

/--
Given a goal of the form `⊢ f as = f bs`, `⊢ (p → q) = (p' → q')`, or `⊢ f as ≍ f bs`, try to apply congruence.
It takes proof irrelevance into account, and the fact that `Decidable p` is a subsingleton.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc7f548c4cfd8720a195828de6829625d036ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
