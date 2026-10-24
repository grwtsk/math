# IsGδ.dense_biUnion_interior_of_closed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3ac62d8-c71e-d1b7-44ca-6e1ee1783e3b",
  "kind": "theorem",
  "lexical_name": "IsGδ.dense_biUnion_interior_of_closed",
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
  "slug": "isg-dense-biunion-interior-of-closed--6b8c4e51df00ad108ecd9a63",
  "source": {
    "blob": "5c2d53d421cd79c5bae68afa06a4f54de0d2357f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5df1e8548a0ff5b4bd9bd4817585e771d1349ce6fa596f2f9d9a51366af5d079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b8c4e51df00ad108ecd9a63317a5867d3e2e82d82189e008e980021500d4ac1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant5df1e8548a0ff5b4bd9bd4817585e771d1349ce6fa596f2f9d9a51366af5d079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3ac62d8-c71e-d1b7-44ca-6e1ee1783e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsGδ.dense_biUnion_interior_of_closed {t : Set α} {s : Set X} (hs : IsGδ s) (hd : Dense s)
    (ht : t.Countable) {f : α → Set X} (hc : ∀ i ∈ t, IsClosed (f i)) (hU : s ⊆ ⋃ i ∈ t, f i) :
    Dense (⋃ i ∈ t, interior (f i)) := by
  haveI := ht.to_subtype
  simp only [biUnion_eq_iUnion, SetCoe.forall'] at *
  exact hs.dense_iUnion_interior_of_closed hd hc hU

/-- If a countable family of closed sets cover a dense `Gδ` set, then the union of their interiors
is dense. Formulated here with `⋃₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant5df1e8548a0ff5b4bd9bd4817585e771d1349ce6fa596f2f9d9a51366af5d079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant5df1e8548a0ff5b4bd9bd4817585e771d1349ce6fa596f2f9d9a51366af5d079.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2d53d421cd79c5bae68afa06a4f54de0d2357f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
