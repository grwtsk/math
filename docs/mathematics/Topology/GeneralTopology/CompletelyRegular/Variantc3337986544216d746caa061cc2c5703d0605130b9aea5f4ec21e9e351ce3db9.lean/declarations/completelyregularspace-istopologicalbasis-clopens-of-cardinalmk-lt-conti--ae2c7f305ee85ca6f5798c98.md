# CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cb8ff29-9734-fd39-6c80-fc6fcd286a4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e433a07d-ecb9-83cd-9c3d-a0085f797c2a",
  "kind": "theorem",
  "lexical_name": "CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum",
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
  "slug": "completelyregularspace-istopologicalbasis-clopens-of-cardinalmk-lt-conti--ae2c7f305ee85ca6f5798c98",
  "source": {
    "blob": "78757f98f10a2a14fa36649f4aa13d5a11650a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae2c7f305ee85ca6f5798c9811861c999897af6677e8107e17d7eb99edfe1822",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e433a07d-ecb9-83cd-9c3d-a0085f797c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum
    [CompletelyRegularSpace X] (hX : Cardinal.mk X < continuum) :
    IsTopologicalBasis {s : Set X | IsClopen s} := by
  refine isTopologicalBasis_of_isOpen_of_nhds (fun x s ↦ IsClopen.isOpen s) (fun x s hxs hs ↦ ?_)
  choose f hf using completely_regular_isOpen x s hs hxs
  obtain ⟨hfc, hf₀, hf₁⟩ := hf
  let R := Set.range f
  have hR : lift.{u, 0} (Cardinal.mk R) < lift.{0, u} continuum := by
    simpa [R] using mk_range_le_lift.trans_lt (lift_strictMono hX)
  obtain ⟨r, hr⟩ : ∃ r : I, r ∈ Rᶜ := compl_nonempty_of_mk_lt_mk (by simpa using hR)
  have hr' : ∀ (x : X), f x ≠ r := by simpa [R] using hr
  have hrclopen : f ⁻¹' Iio r = f ⁻¹' Iic r := by
    ext; simp [le_iff_lt_or_eq, hr']
  refine ⟨f ⁻¹' Iio r, ⟨hrclopen ▸ isClosed_Iic.preimage hfc, isOpen_Iio.preimage hfc⟩, ?_, ?_⟩
  · simp [hf₀, hrclopen]
  · refine preimage_subset_iff.mpr (fun x ↦ ?_)
    contrapose; intro hxs
    simpa [hf₁ hxs] using le_one'

/-- A T₃.₅ space is a completely regular space that is also T₀. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variantc3337986544216d746caa061cc2c5703d0605130b9aea5f4ec21e9e351ce3db9.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78757f98f10a2a14fa36649f4aa13d5a11650a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
