# exists_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65dd80d7-156f-7ed0-d09b-c16455b04cd9",
  "kind": "theorem",
  "lexical_name": "exists_top",
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
  "slug": "exists-top--dcb3c8a45e5fb52a525e58a2",
  "source": {
    "blob": "bb9ac2caf5edb1add2f18336a0b390b88881a867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcb3c8a45e5fb52a525e58a2307f042f05120da2bafb96197d6b87cbe0f0eaf8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65dd80d7-156f-7ed0-d09b-c16455b04cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_top (p : E →ₗ.[ℝ] ℝ) (hp_nonneg : ∀ x : p.domain, (x : E) ∈ s → 0 ≤ p x)
    (hp_dense : ∀ y, ∃ x : p.domain, (x : E) + y ∈ s) :
    ∃ q ≥ p, q.domain = ⊤ ∧ ∀ x : q.domain, (x : E) ∈ s → 0 ≤ q x := by
  set S := { p : E →ₗ.[ℝ] ℝ | ∀ x : p.domain, (x : E) ∈ s → 0 ≤ p x }
  have hSc : ∀ c, c ⊆ S → IsChain (· ≤ ·) c → ∀ y ∈ c, ∃ ub ∈ S, ∀ z ∈ c, z ≤ ub := by
    intro c hcs c_chain y hy
    clear hp_nonneg hp_dense p
    have cne : c.Nonempty := ⟨y, hy⟩
    have hcd : DirectedOn (· ≤ ·) c := c_chain.directedOn
    refine ⟨LinearPMap.sSup c hcd, ?_, fun _ ↦ LinearPMap.le_sSup hcd⟩
    rintro ⟨x, hx⟩ hxs
    have hdir : DirectedOn (· ≤ ·) (LinearPMap.domain '' c) :=
      directedOn_image.2 (hcd.mono LinearPMap.domain_mono.monotone)
    rcases (mem_sSup_of_directed (cne.image _) hdir).1 hx with ⟨_, ⟨f, hfc, rfl⟩, hfx⟩
    have : f ≤ LinearPMap.sSup c hcd := LinearPMap.le_sSup _ hfc
    convert ← hcs hfc ⟨x, hfx⟩ hxs using 1
    exact this.2 rfl
  obtain ⟨q, hpq, hqs, hq⟩ := zorn_le_nonempty₀ S hSc p hp_nonneg
  refine ⟨q, hpq, ?_, hqs⟩
  contrapose! hq
  have hqd : ∀ y, ∃ x : q.domain, (x : E) + y ∈ s := fun y ↦
    let ⟨x, hx⟩ := hp_dense y
    ⟨Submodule.inclusion hpq.left x, hx⟩
  rcases step s q hqs hqd hq with ⟨r, hqr, hr⟩
  exact ⟨r, hr, hqr.le, fun hrq ↦ hqr.ne' <| hrq.antisymm hqr.le⟩

end RieszExtension

/-- M. **Riesz extension theorem**: given a convex cone `s` in a vector space `E`, a submodule `p`,
and a linear `f : p → ℝ`, assume that `f` is nonnegative on `p ∩ s` and `p + s = E`. Then
there exists a globally defined linear function `g : E → ℝ` that agrees with `f` on `p`,
and is nonnegative on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extension/Variantcb9e8259c2835805e95b44506a5c8f6845e9c0b80bddf0bcc1e5570a7cfd6351.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9ac2caf5edb1add2f18336a0b390b88881a867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
