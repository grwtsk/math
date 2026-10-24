# CompletelyRegularSpace.isTopologicalBasis_clopens_of_cardinalMk_lt_continuum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85fbd95d-601b-99a2-6db5-aa7d269d3950",
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
  "slug": "completelyregularspace-istopologicalbasis-clopens-of-cardinalmk-lt-conti--0e04f0a93260b53752a7d9b2",
  "source": {
    "blob": "91f97dddee5dc39432fdf44eb47b44115a99d816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 215,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e04f0a93260b53752a7d9b2fa82293fde8cd20a6b1f3750d401d10afd727a1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85fbd95d-601b-99a2-6db5-aa7d269d3950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–235.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f97dddee5dc39432fdf44eb47b44115a99d816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
