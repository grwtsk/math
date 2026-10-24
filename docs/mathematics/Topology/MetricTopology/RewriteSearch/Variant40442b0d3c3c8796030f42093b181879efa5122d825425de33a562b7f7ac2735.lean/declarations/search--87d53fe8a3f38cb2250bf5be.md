# search

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a4595c227640c081c3116b96a9114ebe3921ba33a1fdb2d7ef5abc296ce9243",
  "kind": "def",
  "lexical_name": "search",
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
  "slug": "search--87d53fe8a3f38cb2250bf5be",
  "source": {
    "blob": "b255270400b0cb3c7614bff9b32f9bdbd622763b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 263,
    "path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87d53fe8a3f38cb2250bf5be4b0edc8cf22cfeba1fc33792cca71dc7a2dfadad",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a4595c227640c081c3116b96a9114ebe3921ba33a1fdb2d7ef5abc296ce9243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def search (n : SearchNode)
    (stopAtRfl := true) (stopAtDistZero := true)
    (forbidden : NameSet := ∅) (maxQueued : Option Nat := none) :
    MLList MetaM SearchNode := .squash fun _ => do
  let hyps ← localHypotheses
  let moduleRef ← createModuleTreeRef
  let search := bestFirstSearchCore (maxQueued := maxQueued)
    (β := String) (removeDuplicatesBy? := some SearchNode.ppGoal)
    prio estimator (rewrites hyps moduleRef forbidden) n
  let search ←
    if ← isTracingEnabledFor `rw_search then do
      pure <| search.mapM fun n => do trace[rw_search] "{← toString n}"; pure n
    else
      pure search
  let search := if stopAtRfl then
    search.mapM compute_rfl? |>.takeUpToFirst fun n => n.rfl? = some true
  else
    search
  return if stopAtDistZero then
    search.map (fun r => r.compute_dist?) |>.takeUpToFirst (fun r => r.dist? = some 0)
  else
    search

end SearchNode

open Elab Tactic Lean.Parser.Tactic

/--
`rw_search` attempts to solve an equality goal
by repeatedly rewriting using lemmas from the library.

If no solution is found,
the best sequence of rewrites found before `maxHeartbeats` elapses is returned.

The search is a best-first search, minimising the Levenshtein edit distance between
the pretty-printed expressions on either side of the equality.
(The strings are tokenized at spaces,
separating delimiters `(`, `)`, `[`, `]`, and `,` into their own tokens.)

You can use `rw_search [-my_lemma, -my_theorem]`
to prevent `rw_search` from using the names theorems.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b255270400b0cb3c7614bff9b32f9bdbd622763b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
