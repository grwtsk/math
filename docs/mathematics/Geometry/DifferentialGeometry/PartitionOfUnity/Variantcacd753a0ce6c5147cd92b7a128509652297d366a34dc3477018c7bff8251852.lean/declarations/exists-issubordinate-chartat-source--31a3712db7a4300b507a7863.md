# exists_isSubordinate_chartAt_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:920138fa-2bbe-054e-5242-b5df080318b5",
  "kind": "theorem",
  "lexical_name": "exists_isSubordinate_chartAt_source",
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
  "slug": "exists-issubordinate-chartat-source--31a3712db7a4300b507a7863",
  "source": {
    "blob": "4fbe80846490fa0ce645fa8807e372f696f7cdaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 552,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31a3712db7a4300b507a7863728e3849b58ca3e3738320b9dc6c306f37e3d97c",
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

Occurrence: `result:920138fa-2bbe-054e-5242-b5df080318b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isSubordinate_chartAt_source :
    ∃ f : SmoothPartitionOfUnity M I M univ, f.IsSubordinate (fun x ↦ (chartAt H x).source) := by
  apply exists_isSubordinate _ isClosed_univ _ (fun i ↦ (chartAt H _).open_source) (fun x _ ↦ ?_)
  exact mem_iUnion_of_mem x (mem_chart_source H x)

end SmoothPartitionOfUnity

variable [SigmaCompactSpace M] [T2Space M] {t : M → Set F} {n : ℕ∞}

/-- Let `M` be a σ-compact Hausdorff finite dimensional topological manifold. Let `t : M → Set F`
be a family of convex sets. Suppose that for each point `x : M` there exists a neighborhood
`U ∈ 𝓝 x` and a function `g : M → F` such that `g` is $C^n$ smooth on `U` and `g y ∈ t y` for all
`y ∈ U`. Then there exists a $C^n$ smooth function `g : C^∞⟮I, M; 𝓘(ℝ, F), F⟯` such that `g x ∈ t x`
for all `x`. See also `exists_smooth_forall_mem_convex_of_local` and
`exists_smooth_forall_mem_convex_of_local_const`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Variantcacd753a0ce6c5147cd92b7a128509652297d366a34dc3477018c7bff8251852.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fbe80846490fa0ce645fa8807e372f696f7cdaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
