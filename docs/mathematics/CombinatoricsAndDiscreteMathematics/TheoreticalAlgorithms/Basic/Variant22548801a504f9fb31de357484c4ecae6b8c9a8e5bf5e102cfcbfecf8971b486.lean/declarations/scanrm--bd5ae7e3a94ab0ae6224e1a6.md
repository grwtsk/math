# scanrM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1681d51c5dd40051cf001b67d00362164a16d9ff6ff694f52adc44bac6689a8a",
  "kind": "def",
  "lexical_name": "scanrM",
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
  "slug": "scanrm--bd5ae7e3a94ab0ae6224e1a6",
  "source": {
    "blob": "553e88f7fa823f626accbc9e21111c6feb9d8de7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 331,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd5ae7e3a94ab0ae6224e1a659807effa4fb112f60e6f6cb76707548e1e5a3f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1681d51c5dd40051cf001b67d00362164a16d9ff6ff694f52adc44bac6689a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def scanrM [Monad m]
    (f : α → β → m β) (init : β) (as : Array α) (start := as.size) (stop := 0) : m (Array β) :=
  let start := min start as.size
  loop f init as start stop (Nat.min_le_right _ _) #[]
where
  /-- auxiliary tail-recursive function for scanrM -/
  loop (f : α → β → m β) (init : β) (as : Array α)
       (start stop : Nat)
       (h_start : start ≤ as.size)
       (acc : Array β) :
       m (Array β) := do
    if h_gt : stop < start then
      let i := start - 1
      let next ← f as[i] init
      loop f next as i stop (by omega) (acc.push init)
    else
      pure <| acc.push init |>.reverse

/--
Fold a function `f` over the array from the left, returning the array of partial results.
```
scanl (· + ·) 0 #[1, 2, 3] = #[0, 1, 3, 6]
```
-/
@[inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant22548801a504f9fb31de357484c4ecae6b8c9a8e5bf5e102cfcbfecf8971b486.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553e88f7fa823f626accbc9e21111c6feb9d8de7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
