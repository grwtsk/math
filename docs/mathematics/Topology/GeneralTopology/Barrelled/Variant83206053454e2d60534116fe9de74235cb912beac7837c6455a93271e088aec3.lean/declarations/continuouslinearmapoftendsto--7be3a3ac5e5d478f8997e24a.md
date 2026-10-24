# continuousLinearMapOfTendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:690b371b24ff909890ca404075f73b4de6d8a7be58034a1f1a7fbc95608b9ce9",
  "kind": "def",
  "lexical_name": "continuousLinearMapOfTendsto",
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
  "slug": "continuouslinearmapoftendsto--7be3a3ac5e5d478f8997e24a",
  "source": {
    "blob": "18976c7bce32f7468baef765dfe98dc1d30a080e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7be3a3ac5e5d478f8997e24a663822c2df32ae247d0f7576426c16ea159a2638",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:690b371b24ff909890ca404075f73b4de6d8a7be58034a1f1a7fbc95608b9ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousLinearMapOfTendsto
    [T2Space F] {l : Filter α} [l.IsCountablyGenerated]
    [l.NeBot] (g : α → E →SL[σ₁₂] F) {f : E → F} (h : Tendsto (fun n x ↦ g n x) l (𝓝 f)) :
    E →SL[σ₁₂] F where
  toLinearMap := linearMapOfTendsto _ _ h
  cont := by
    -- Since the filter `l` is countably generated and nontrivial, we can find a sequence
    -- `u : ℕ → α` that tends to `l`. By considering `g ∘ u` instead of `g`, we can thus assume
    -- that `α = ℕ` and `l = atTop`
    rcases l.exists_seq_tendsto with ⟨u, hu⟩
    -- We claim that the limit is continuous because it's a limit of an equicontinuous family.
    -- By the Banach-Steinhaus theorem, this equicontinuity will follow from pointwise boundedness.
    refine (h.comp hu).continuous_of_equicontinuous
      (PolynormableSpace.banach_steinhaus ?_).equicontinuous
    -- For `x` fixed, we need to show that the range of `(i : ℕ) ↦ g i x` is bounded.
    intro x
    -- This follows from the fact that this sequence converges (to `f x`) by hypothesis.
    rw [tendsto_pi_nhds] at h
    exact ((h x).comp hu).isVonNBounded_range 𝕜₂

end PolynormableSpace

end TVS_anyField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant83206053454e2d60534116fe9de74235cb912beac7837c6455a93271e088aec3.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18976c7bce32f7468baef765dfe98dc1d30a080e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
