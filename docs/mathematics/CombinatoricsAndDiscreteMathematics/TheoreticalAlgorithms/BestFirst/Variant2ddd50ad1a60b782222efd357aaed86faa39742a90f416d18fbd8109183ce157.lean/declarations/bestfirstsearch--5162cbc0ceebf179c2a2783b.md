# bestFirstSearch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:289578d084cd3ab77e7d6d404a24307bec4adce8663730cb2497af499f989339",
  "kind": "def",
  "lexical_name": "bestFirstSearch",
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
  "slug": "bestfirstsearch--5162cbc0ceebf179c2a2783b",
  "source": {
    "blob": "77533d89600f1811bd4975b6e26a4cb9e6069c36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5162cbc0ceebf179c2a2783b3b7cf9884cbdc739f8c3c2ed6ee529727a0d0d70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:289578d084cd3ab77e7d6d404a24307bec4adce8663730cb2497af499f989339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bestFirstSearch (f : α → MLList m α) (a : α)
    (maxDepth : Option Nat := none) (maxQueued : Option Nat := none) (removeDuplicates := true) :
    MLList m α :=
let f' : Nat → α → MLList m α := match maxDepth with
| none => fun _ a => f a
| some d => fun n a => if d < n then nil else f a
if removeDuplicates then
  let f'' : Nat → α → MLList (StateT.{u} (RBSet α compare) m) α := fun n a =>
    (f' n a).liftM >>= fun b => do
      let s ← get
      if s.contains b then failure
      set <| s.insert b
      pure b
  cons a (fixl (bestFirstSearchAux f'' maxQueued) (RBMap.single a (0, f'' 0 a)))
    |>.runState' (RBSet.empty.insert a)
else
  cons a (fixl (bestFirstSearchAux f' maxQueued) (RBMap.single a (0, f' 0 a)))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BestFirst/Variant2ddd50ad1a60b782222efd357aaed86faa39742a90f416d18fbd8109183ce157.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77533d89600f1811bd4975b6e26a4cb9e6069c36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
