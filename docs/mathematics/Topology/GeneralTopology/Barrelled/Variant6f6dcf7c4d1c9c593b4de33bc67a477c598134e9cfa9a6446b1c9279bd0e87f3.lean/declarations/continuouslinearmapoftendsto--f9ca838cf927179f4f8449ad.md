# continuousLinearMapOfTendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3af70194dcd1beace9c03819c5ae0456e147985bdf9cc181a351ac97732dd47",
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
  "slug": "continuouslinearmapoftendsto--f9ca838cf927179f4f8449ad",
  "source": {
    "blob": "fe988f45065c716f045899324c7627db7047fde4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9ca838cf927179f4f8449ad20fce87847b84388af4ad9d328809c1e086dc645",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3af70194dcd1beace9c03819c5ae0456e147985bdf9cc181a351ac97732dd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def continuousLinearMapOfTendsto (hq : WithSeminorms q)
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
    refine (h.comp hu).continuous_of_equicontinuous (hq.banach_steinhaus ?_).equicontinuous
    -- For `k` and `x` fixed, we need to show that `(i : ℕ) ↦ q k (g i x)` is bounded.
    intro k x
    -- This follows from the fact that this sequences converges (to `q k (f x)`) by hypothesis and
    -- continuity of `q k`.
    rw [tendsto_pi_nhds] at h
    exact (((hq.continuous_seminorm k).tendsto _).comp <| (h x).comp hu).bddAbove_range
end WithSeminorms

end TVS_anyField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Barrelled/Variant6f6dcf7c4d1c9c593b4de33bc67a477c598134e9cfa9a6446b1c9279bd0e87f3.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe988f45065c716f045899324c7627db7047fde4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
