# foldr_attachWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b076210-acc0-64fe-5381-57196368f112",
  "kind": "theorem",
  "lexical_name": "foldr_attachWith",
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
  "slug": "foldr-attachwith--d484f7fe090ad85140336973",
  "source": {
    "blob": "476cbde4449e31979885f46854ba887cc560f694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 329,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d484f7fe090ad851403369736fc8311319700d31764d225d2675031fa8f8b551",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b076210-acc0-64fe-5381-57196368f112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem foldr_attachWith
    {xs : Array α} {q : α → Prop} (H : ∀ a, a ∈ xs → q a) {f : { x // q x} → β → β} {b} (w : start = xs.size) :
    (xs.attachWith q H).foldr f b start 0 = xs.attach.foldr (fun a acc => f ⟨a.1, H _ a.2⟩ acc) b := by
  subst w
  rcases xs with ⟨xs⟩
  simp [List.foldr_attachWith, List.foldr_map]

/--
If we fold over `l.attach` with a function that ignores the membership predicate,
we get the same results as folding over `l` directly.

This is useful when we need to use `attach` to show termination.

Unfortunately this can't be applied by `simp` because of the higher order unification problem,
and even when rewriting we need to specify the function explicitly.
See however `foldl_subtype` below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476cbde4449e31979885f46854ba887cc560f694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
