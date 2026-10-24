# convolution_integrand_bound_right_of_le_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17be926f-617f-cea1-2953-bc470b9bd440",
  "kind": "theorem",
  "lexical_name": "convolution_integrand_bound_right_of_le_of_subset",
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
  "slug": "convolution-integrand-bound-right-of-le-of-subset--e50b6d02e0cd2b2c14233af7",
  "source": {
    "blob": "dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 121,
    "path": "GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e50b6d02e0cd2b2c14233af70513f2de7429c8e3815bfb206f26f62af2a93b18",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17be926f-617f-cea1-2953-bc470b9bd440`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convolution_integrand_bound_right_of_le_of_subset {C : ℝ} (hC : ∀ i, ‖g i‖ ≤ C) {x t : G}
    {s u : Set G} (hx : x ∈ s) (hu : -tsupport g + s ⊆ u) :
    ‖L (f t) (g (x - t))‖ ≤ u.indicator (fun t => ‖L‖ * ‖f t‖ * C) t := by
  -- Porting note: had to add `f := _`
  refine le_indicator (f := fun t ↦ ‖L (f t) (g (x - t))‖) (fun t _ => ?_) (fun t ht => ?_) t
  · apply_rules [L.le_of_opNorm₂_le_of_le, le_rfl]
  · have : x - t ∉ support g := by
      refine mt (fun hxt => hu ?_) ht
      refine ⟨_, Set.neg_mem_neg.mpr (subset_closure hxt), _, hx, ?_⟩
      simp only [neg_sub, sub_add_cancel]
    simp only [notMem_support.mp this, (L _).map_zero, norm_zero, le_rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Convolution/Variantd8135e117cb7055493031045376471e4f190ff5335ddf1e1c5b1e6508703dbb5.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd729b59c23cddae6f4aaed8c407fbf13c4fb9fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
