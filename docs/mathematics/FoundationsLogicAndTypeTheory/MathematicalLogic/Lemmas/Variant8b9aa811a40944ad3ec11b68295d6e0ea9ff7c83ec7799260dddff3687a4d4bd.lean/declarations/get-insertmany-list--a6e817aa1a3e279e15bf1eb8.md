# get_insertMany_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cd795b6-0554-41a3-211d-863350d3670c",
  "kind": "theorem",
  "lexical_name": "get_insertMany_list",
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
  "slug": "get-insertmany-list--a6e817aa1a3e279e15bf1eb8",
  "source": {
    "blob": "438ecb9fbd38173c56788a41131ddead019d98f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1917,
    "line": 1910,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8b9aa811a40944ad3ec11b68295d6e0ea9ff7c83ec7799260dddff3687a4d4bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e817aa1a3e279e15bf1eb80eac65f7d19c89fc0ea17cc4cba811d65d8b0877",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8b9aa811a40944ad3ec11b68295d6e0ea9ff7c83ec7799260dddff3687a4d4bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cd795b6-0554-41a3-211d-863350d3670c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1910–1917.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[grind =] theorem get_insertMany_list [TransCmp cmp] [BEq α] [PartialEquivBEq α] [LawfulBEqCmp cmp] (h : t.WF)
    {l : List (α × β)} {k : α} {h'} :
    get (insertMany t l) k h' =
      match w : l.findSomeRev? (fun ⟨a, b⟩ => if cmp a k = .eq then some b else none) with
      | some v => v
      | none => get t k (contains_of_contains_insertMany_list' h h' w) :=
  Impl.Const.get_insertMany!_list h (k := k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8b9aa811a40944ad3ec11b68295d6e0ea9ff7c83ec7799260dddff3687a4d4bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8b9aa811a40944ad3ec11b68295d6e0ea9ff7c83ec7799260dddff3687a4d4bd.lean#L1910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `438ecb9fbd38173c56788a41131ddead019d98f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
