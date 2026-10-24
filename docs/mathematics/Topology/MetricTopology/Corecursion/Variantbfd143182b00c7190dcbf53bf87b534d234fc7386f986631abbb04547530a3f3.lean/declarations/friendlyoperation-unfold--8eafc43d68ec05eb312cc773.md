# FriendlyOperation.unfold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b214e856465433c14dd8ec993cfb79fc88f1e3f2107fc3025d6f7b0087e1af7b",
  "kind": "def",
  "lexical_name": "FriendlyOperation.unfold",
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
  "slug": "friendlyoperation-unfold--8eafc43d68ec05eb312cc773",
  "source": {
    "blob": "aaca1e94fc40afade93caf4ad11cbdcd37ac682b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 363,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8eafc43d68ec05eb312cc773f2a62631142e698b8e0af26d5c551e946e1f590c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b214e856465433c14dd8ec993cfb79fc88f1e3f2107fc3025d6f7b0087e1af7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FriendlyOperation.unfold {op : Seq α → Seq α} (h : FriendlyOperation op) (hd? : Option α) :
    Option (α × Subtype (@FriendlyOperation α)) :=
  match hd? with
  | none =>
    match (op nil).destruct with
    | none => none
    | some (t_hd, t_tl) =>
      some (t_hd, ⟨fun _ ↦ t_tl, FriendlyOperation.const⟩)
  | some s_hd =>
    match (op <| .cons s_hd nil).destruct with
    | none => none
    | some (t_hd, _) =>
      some (t_hd, ⟨fun s_tl ↦ (op (.cons s_hd s_tl)).tail, FriendlyOperation.cons_tail h⟩)

set_option backward.isDefEq.respectTransparency false in
/-- `unfold` correctly decomposes a friendly operation: the head of `op s` depends only on the
head of `s` (and is given by `unfold`), while the tail of `op s` is obtained by applying the
friendly operation returned by `unfold` to the tail of `s`. This gives a coinductive
characterization of `FriendlyOperation`. For the coinduction principle, see
`FriendlyOperation.coind`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variantbfd143182b00c7190dcbf53bf87b534d234fc7386f986631abbb04547530a3f3.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaca1e94fc40afade93caf4ad11cbdcd37ac682b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
