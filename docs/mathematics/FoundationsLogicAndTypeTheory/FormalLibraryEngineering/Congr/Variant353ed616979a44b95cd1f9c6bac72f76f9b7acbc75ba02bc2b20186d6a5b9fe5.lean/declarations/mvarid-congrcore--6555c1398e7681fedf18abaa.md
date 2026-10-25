# MVarId.congrCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93a6b8117ba3119bfd7f6e465720b776e92b502eadbe12a99bcb7357b707c559",
  "kind": "def",
  "lexical_name": "MVarId.congrCore",
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
  "slug": "mvarid-congrcore--6555c1398e7681fedf18abaa",
  "source": {
    "blob": "6cc7f548c4cfd8720a195828de6829625d036ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6555c1398e7681fedf18abaa8b4273c04cba5d1200f017e29d0beaef891ce214",
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

Occurrence: `declaration:93a6b8117ba3119bfd7f6e465720b776e92b502eadbe12a99bcb7357b707c559`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MVarId.congrCore (mvarId : MVarId) : MetaM (List MVarId) := do
  if let some mvarIds ← mvarId.congr? then
    pure mvarIds
  else if let some mvarIds ← mvarId.hcongr? then
    pure mvarIds
  else if let some mvarIds ← mvarId.congrImplies? then
    pure mvarIds
  else
    throwTacticEx `congr mvarId "Failed to apply congruence"

/--
Given a goal of the form `⊢ f as = f bs`, `⊢ (p → q) = (p' → q')`, or `⊢ f as ≍ f bs`, try to apply congruence.
It takes proof irrelevance into account, and the fact that `Decidable p` is a subsingleton.

* Applies `congr` recursively up to depth `depth`.
* If `closePre := true`, it will attempt to close new goals
  using `Eq.refl`, `HEq.refl`, and `assumption` with reducible transparency.
* If `closePost := true`, it will try again on goals on which `congr` failed to make progress
  with default transparency.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant353ed616979a44b95cd1f9c6bac72f76f9b7acbc75ba02bc2b20186d6a5b9fe5.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cc7f548c4cfd8720a195828de6829625d036ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
