# elimLetsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04ce563bf790ec72412d5d8c0dc228ac5332ec1d0d3a59ae64119bb7eec23ee8",
  "kind": "def",
  "lexical_name": "elimLetsCore",
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
  "slug": "elimletscore--09c0218bb47db8a778d7e957",
  "source": {
    "blob": "c544c591dff8c86fcf8e430f5f463841148f0af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variant072e0012294567ce87dbbe771aefde53df50f5fabab23258bb8b765615aec141.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09c0218bb47db8a778d7e957e676fcd0fd8fdaaaa6892aba8e726104cf7deafb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variant072e0012294567ce87dbbe771aefde53df50f5fabab23258bb8b765615aec141.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04ce563bf790ec72412d5d8c0dc228ac5332ec1d0d3a59ae64119bb7eec23ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elimLetsCore (e : Expr) (elimTrivial := true) : MetaM Expr := StateRefT'.run' (s := Std.HashSet.emptyWithCapacity 10) do
  -- Figure out if we can make this work with Core.transform.
  -- I think that would entail keeping track of BVar shifts in `pre` and `post`.
  let pre (e : Expr) : StateRefT (Std.HashSet FVarId) MetaM TransformStep := do
    match e with
    | .letE _ ty val body _ => do
      let .mdata d _ := ty | return .continue
      let uses := Uses.fromNat (d.getNat `uses 2) -- 2 goes to .many
      if doNotDup uses val elimTrivial then return .continue
      return .visit (body.instantiate1 val) -- urgh O(n^2). See comment above
    | _ => return .continue
  Meta.transform e (pre := pre)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variant072e0012294567ce87dbbe771aefde53df50f5fabab23258bb8b765615aec141.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LetElim/Variant072e0012294567ce87dbbe771aefde53df50f5fabab23258bb8b765615aec141.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c544c591dff8c86fcf8e430f5f463841148f0af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
