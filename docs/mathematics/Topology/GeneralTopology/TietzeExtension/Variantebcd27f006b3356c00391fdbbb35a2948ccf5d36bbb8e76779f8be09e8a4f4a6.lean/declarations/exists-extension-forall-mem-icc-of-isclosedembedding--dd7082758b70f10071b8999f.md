# exists_extension_forall_mem_Icc_of_isClosedEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdfe58c7-b62d-d9c9-dbd7-6b3e3d412a50",
  "kind": "theorem",
  "lexical_name": "exists_extension_forall_mem_Icc_of_isClosedEmbedding",
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
  "slug": "exists-extension-forall-mem-icc-of-isclosedembedding--dd7082758b70f10071b8999f",
  "source": {
    "blob": "0d6a245ba8d83c8009f6122661fa19c696a89a22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 299,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7082758b70f10071b8999f14d75c78a9456e8e02b3466529c70c2ecca8dcac",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdfe58c7-b62d-d9c9-dbd7-6b3e3d412a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_extension_forall_mem_Icc_of_isClosedEmbedding (f : X →ᵇ ℝ) {a b : ℝ} {e : X → Y}
    (hf : ∀ x, f x ∈ Icc a b) (hle : a ≤ b) (he : IsClosedEmbedding e) :
    ∃ g : Y →ᵇ ℝ, (∀ y, g y ∈ Icc a b) ∧ g ∘ e = f := by
  rcases exists_extension_norm_eq_of_isClosedEmbedding (f - const X ((a + b) / 2)) he with
    ⟨g, hgf, hge⟩
  refine ⟨const Y ((a + b) / 2) + g, fun y => ?_, ?_⟩
  · suffices ‖f - const X ((a + b) / 2)‖ ≤ (b - a) / 2 by
      simpa [Real.Icc_eq_closedBall, add_mem_closedBall_iff_norm] using
        (norm_coe_le_norm g y).trans (hgf.trans_le this)
    refine (norm_le <| div_nonneg (sub_nonneg.2 hle) zero_le_two).2 fun x => ?_
    simpa only [Real.Icc_eq_closedBall] using hf x
  · ext x
    have : g (e x) = f x - (a + b) / 2 := congr_fun hge x
    simp [this]

/-- **Tietze extension theorem** for real-valued bounded continuous maps, a version for a closed
embedding. Let `e` be a closed embedding of a nonempty topological space `X` into a normal
topological space `Y`. Let `f` be a bounded continuous real-valued function on `X`. Then there
exists a bounded continuous function `g : Y →ᵇ ℝ` such that `g ∘ e = f` and each value `g y` belongs
to a closed interval `[f x₁, f x₂]` for some `x₁` and `x₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantebcd27f006b3356c00391fdbbb35a2948ccf5d36bbb8e76779f8be09e8a4f4a6.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d6a245ba8d83c8009f6122661fa19c696a89a22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
