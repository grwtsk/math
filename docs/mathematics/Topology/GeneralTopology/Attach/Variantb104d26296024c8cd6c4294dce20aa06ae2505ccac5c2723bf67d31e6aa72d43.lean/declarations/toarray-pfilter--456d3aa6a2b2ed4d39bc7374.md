# toArray_pfilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16938b44-f63d-5349-0f72-2295e80779d7",
  "kind": "theorem",
  "lexical_name": "toArray_pfilter",
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
  "slug": "toarray-pfilter--456d3aa6a2b2ed4d39bc7374",
  "source": {
    "blob": "1c71ae5fe5fb9d17cea2ba0e217f5af66172fec3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 267,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:456d3aa6a2b2ed4d39bc73743c4d01b9da2324236200208a31e2c52178c981b8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16938b44-f63d-5349-0f72-2295e80779d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toArray_pfilter {o : Option α} {p : (a : α) → o = some a → Bool} :
    (o.pfilter p).toArray = (o.toArray.attach.filter (fun x => p x.1 (by simpa using x.2))).unattach := by
  cases o with
  | none => simp
  | some a =>
    simp only [pfilter_some, toArray_some, List.attach_toArray, List.attachWith_mem_toArray,
      List.attach_cons, List.attach_nil, List.map_nil, List.map_cons, List.size_toArray,
      List.length_cons, List.length_nil, Nat.zero_add, List.filter_toArray', List.unattach_toArray]
    split <;> rename_i h
    · rw [List.filter_cons_of_pos h]; simp
    · rw [List.filter_cons_of_neg h]; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variantb104d26296024c8cd6c4294dce20aa06ae2505ccac5c2723bf67d31e6aa72d43.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c71ae5fe5fb9d17cea2ba0e217f5af66172fec3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
