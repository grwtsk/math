# lift_openEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11b6d526f63806db51d09bda75b071224e91d4f0170eef00e6e04ef944527814",
  "kind": "def",
  "lexical_name": "lift_openEmbedding",
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
  "slug": "lift-openembedding--95f852709a38ac667d52d27b",
  "source": {
    "blob": "7081bfe57cfeb1b95e0f3e64abb3886e18892e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95f852709a38ac667d52d27bb1f1e50bc73a3df2e70377d3733bb0d9fc5726c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11b6d526f63806db51d09bda75b071224e91d4f0170eef00e6e04ef944527814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def lift_openEmbedding (e : OpenPartialHomeomorph X Z) (hf : IsOpenEmbedding f) :
    OpenPartialHomeomorph X' Z where
  toFun := extend f e (fun _ ↦ (Classical.arbitrary Z))
  invFun := f ∘ e.invFun
  source := f '' e.source
  target := e.target
  map_source' := by
    rintro x ⟨x₀, hx₀, hxx₀⟩
    rw [← hxx₀, hf.injective.extend_apply e]
    exact e.map_source' hx₀
  map_target' z hz := mem_image_of_mem f (e.map_target' hz)
  left_inv' := by
    intro x ⟨x₀, hx₀, hxx₀⟩
    rw [← hxx₀, hf.injective.extend_apply e, comp_apply]
    congr
    exact e.left_inv' hx₀
  right_inv' z hz := by simpa only [comp_apply, hf.injective.extend_apply e] using! e.right_inv' hz
  open_source := hf.isOpenMap _ e.open_source
  open_target := e.open_target
  continuousOn_toFun := by
    by_cases Nonempty X; swap
    · intro x hx; simp_all
    set F := (extend f e (fun _ ↦ (Classical.arbitrary Z))) with F_eq
    have heq : EqOn F (e ∘ (hf.toOpenPartialHomeomorph).symm) (f '' e.source) := by
      intro x ⟨x₀, hx₀, hxx₀⟩
      rw [← hxx₀, F_eq, hf.injective.extend_apply e, comp_apply,
        hf.toOpenPartialHomeomorph_left_inv]
    have : ContinuousOn (e ∘ (hf.toOpenPartialHomeomorph).symm) (f '' e.source) := by
      apply e.continuousOn_toFun.comp; swap
      · intro x' ⟨x, hx, hx'x⟩
        rw [← hx'x, hf.toOpenPartialHomeomorph_left_inv]; exact hx
      have : ContinuousOn (hf.toOpenPartialHomeomorph).symm (f '' univ) :=
        (hf.toOpenPartialHomeomorph).continuousOn_invFun
      exact this.mono <| image_mono <| subset_univ _
    exact ContinuousOn.congr this heq
  continuousOn_invFun := hf.continuous.comp_continuousOn e.continuousOn_invFun

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7081bfe57cfeb1b95e0f3e64abb3886e18892e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
