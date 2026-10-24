# isOpen_Iotop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb19d93-b5b6-62fa-5152-7f98293d5f25",
  "kind": "lemma",
  "lexical_name": "isOpen_Iotop",
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
  "slug": "isopen-iotop--355e513ae1193b8745b113ef",
  "source": {
    "blob": "23a8ecbec91aad2bc8e92c339adc5c4137d7e10e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:355e513ae1193b8745b113efb773c727633ece130051bd59b53af9fd331e45ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb19d93-b5b6-62fa-5152-7f98293d5f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_Iotop [TopologicalSpace R] [OrderTopology R] (a b : R) : IsOpen (Iotop a b) := by
  simp only [Iotop]
  split_ifs with h
  · have : Ioc a b = Ioi a := Subset.antisymm (fun x hx ↦ hx.1) (fun x hx ↦ by exact ⟨hx, h _⟩)
    simp [this, isOpen_Ioi]
  · simp [isOpen_Ioo]

/-- `botSet` is the set of all bottom elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant330ce81572267d9a6a2d914f88847b875bb1872c7bbf18d3317f62f1ca8416c6.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23a8ecbec91aad2bc8e92c339adc5c4137d7e10e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
