# exists_isSubordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c320600-186f-34aa-a7c2-b4038f3c5a93",
  "kind": "theorem",
  "lexical_name": "exists_isSubordinate",
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
  "slug": "exists-issubordinate--c045b3a5227bbfaaa08c8979",
  "source": {
    "blob": "4fbe80846490fa0ce645fa8807e372f696f7cdaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 348,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c045b3a5227bbfaaa08c89791cfd8fc1ddda7fd80f70754c4f3a93802d47c11d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c320600-186f-34aa-a7c2-b4038f3c5a93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isSubordinate [T2Space M] [SigmaCompactSpace M] (hs : IsClosed s)
    (hU : ∀ x ∈ s, U x ∈ 𝓝 x) :
    ∃ (ι : Type uM) (f : SmoothBumpCovering ι I M s), f.IsSubordinate U := by
  -- First we deduce some missing instances
  haveI : LocallyCompactSpace H := I.locallyCompactSpace
  haveI : LocallyCompactSpace M := ChartedSpace.locallyCompactSpace H M
  haveI : NormalSpace M := normal_of_paracompact_t2
  -- Next we choose a covering by supports of smooth bump functions
  have hB := fun x hx => SmoothBumpFunction.nhds_basis_support I (hU x hx)
  rcases refinement_of_locallyCompact_sigmaCompact_of_nhds_basis_set hs hB with
    ⟨ι, c, f, hf, hsub', hfin⟩
  choose hcs hfU using hf
  -- Then we use the shrinking lemma to get a covering by smaller open
  rcases exists_subset_iUnion_closed_subset hs (fun i => (f i).isOpen_support)
    (fun x _ => hfin.point_finite x) hsub' with ⟨V, hsV, hVc, hVf⟩
  choose r hrR hr using fun i => (f i).exists_r_pos_lt_subset_ball (hVc i) (hVf i)
  refine' ⟨ι, ⟨c, fun i => (f i).updateRIn (r i) (hrR i), hcs, _, fun x hx => _⟩, fun i => _⟩
  · simpa only [SmoothBumpFunction.support_updateRIn]
  · refine' (mem_iUnion.1 <| hsV hx).imp fun i hi => _
    exact ((f i).updateRIn _ _).eventuallyEq_one_of_dist_lt
      ((f i).support_subset_source <| hVf _ hi) (hr i hi).2
  · simpa only [SmoothBumpFunction.support_updateRIn, tsupport] using hfU i
#align smooth_bump_covering.exists_is_subordinate SmoothBumpCovering.exists_isSubordinate

variable {I}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbe80846490fa0ce645fa8807e372f696f7cdaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
