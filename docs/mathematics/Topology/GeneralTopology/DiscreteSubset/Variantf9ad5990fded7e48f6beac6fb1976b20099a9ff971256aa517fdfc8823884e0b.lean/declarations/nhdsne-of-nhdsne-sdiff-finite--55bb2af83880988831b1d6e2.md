# nhdsNE_of_nhdsNE_sdiff_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf1768e8-114f-193e-915d-daf3b087775f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:087f5821-77c9-9219-0473-21f1aa8f8fe2",
  "kind": "theorem",
  "lexical_name": "nhdsNE_of_nhdsNE_sdiff_finite",
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
  "slug": "nhdsne-of-nhdsne-sdiff-finite--55bb2af83880988831b1d6e2",
  "source": {
    "blob": "519b71a188b964b6240c09241cd1d599fa5803ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55bb2af83880988831b1d6e247f5de1798e6e04fd5d1073572f1c0ec326f3120",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:087f5821-77c9-9219-0473-21f1aa8f8fe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsNE_of_nhdsNE_sdiff_finite {X : Type*} [TopologicalSpace X] [T1Space X] {x : X}
    {U s : Set X} (hU : U ∈ 𝓝[≠] x) (hs : Finite s) :
    U \ s ∈ 𝓝[≠] x := by
  rw [mem_nhdsWithin] at hU ⊢
  obtain ⟨t, ht, h₁ts, h₂ts⟩ := hU
  use t \ (s \ {x})
  constructor
  · rw [← isClosed_compl_iff, compl_diff]
    exact s.toFinite.diff.isClosed.union (isClosed_compl_iff.2 ht)
  · tauto_set

@[deprecated (since := "2025-05-22")]
alias nhdNE_of_nhdNE_sdiff_finite := nhdsNE_of_nhdsNE_sdiff_finite

/-- In a T1Space, a set `s` is codiscreteWithin `U` iff it has locally finite complement within `U`.
More precisely: `s` is codiscreteWithin `U` iff every point `z ∈ U` has a punctured neighborhood
intersect `U \ s` in only finitely many points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantf9ad5990fded7e48f6beac6fb1976b20099a9ff971256aa517fdfc8823884e0b.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519b71a188b964b6240c09241cd1d599fa5803ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
