# LowerHemicontinuous.inter_hasOpenCGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:418d8c62-0598-047e-1dc8-48b20dbbe984",
  "kind": "lemma",
  "lexical_name": "LowerHemicontinuous.inter_hasOpenCGraph",
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
  "slug": "lowerhemicontinuous-inter-hasopencgraph--414d55664cf8282eea69a676",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 497,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:414d55664cf8282eea69a676ba83d35064e3b6516a84d032be52c85a9368e60a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:418d8c62-0598-047e-1dc8-48b20dbbe984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LowerHemicontinuous.inter_hasOpenCGraph [TopologicalSpace β] {f g : α → Set β}
    (hf : LowerHemicontinuous f) (hg : HasOpenCGraph g) :
    LowerHemicontinuous (fun x ↦ f x ∩ g x) := by
  simp_rw [lowerHemicontinuous_iff_isOpen_inter_nonempty] at ⊢ hf
  intro t ht
  rw [isOpen_iff_forall_mem_open]
  intro x ⟨y, ⟨hyf, hyg⟩, hyt⟩
  obtain ⟨U, V, hU, hV, hxU, hyV, hUV⟩ := (isOpen_prod_iff.mp hg) x y hyg
  refine ⟨U ∩ {x' | (f x' ∩ (t ∩ V)).Nonempty}, ?_, hU.inter (hf _ (ht.inter hV)),
      ⟨hxU, y, hyf, hyt, hyV⟩⟩
  intro x' ⟨hx'U, z, hzf, hzt, hzV⟩
  exact ⟨z, ⟨hzf, hUV (Set.mk_mem_prod hx'U hzV)⟩, hzt⟩

/-! ### Uniform Limits

Like continuity, hemicontinuity is preserved under certain uniform limits, where the uniformity on
the target `Set β` is the Hausdorff uniformity. In this section, we prove this result for both
lower hemicontinuous and upper hemicontinuous limits.
-/

section limits

variable {ι : Type*} {F : ι → α → Set β} {l : Filter ι} [NeBot l]
variable [UniformSpace β]
open UniformSpace
attribute [local instance] UniformSpace.hausdorff

/-- A net of lower hemicontinuous set-valued functions converging uniformly on `s` (along a
filter `l`) in the Hausdorff uniformity has a lower hemicontinuous limit on `s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
