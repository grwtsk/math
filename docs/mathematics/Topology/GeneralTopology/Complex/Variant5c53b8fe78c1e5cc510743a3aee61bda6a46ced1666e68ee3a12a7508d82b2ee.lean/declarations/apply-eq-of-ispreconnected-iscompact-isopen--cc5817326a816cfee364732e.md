# apply_eq_of_isPreconnected_isCompact_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cd29c5a-7137-4d4a-ca2e-259cdf34317f",
  "kind": "theorem",
  "lexical_name": "apply_eq_of_isPreconnected_isCompact_isOpen",
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
  "slug": "apply-eq-of-ispreconnected-iscompact-isopen--cc5817326a816cfee364732e",
  "source": {
    "blob": "7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc5817326a816cfee364732e0ebef76e75812451e2afa8880111fefc4d29a59f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd29c5a-7137-4d4a-ca2e-259cdf34317f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_of_isPreconnected_isCompact_isOpen {f : M → F} {U : Set M} {a b : M}
    (hd : MDiff[U] f) (hpc : IsPreconnected U) (hc : IsCompact U)
    (ho : IsOpen U) (ha : a ∈ U) (hb : b ∈ U) : f a = f b := by
  -- Subtract `f b` to avoid the assumption `[StrictConvexSpace ℝ F]`
  wlog hb₀ : f b = 0 generalizing f
  -- TODO: Add `MDifferentiableOn.sub` etc
  · have hd' : MDiff[U] (f · - f b) := fun x hx ↦
      ⟨(hd x hx).1.sub continuousWithinAt_const, (hd x hx).2.sub_const _⟩
    simpa [sub_eq_zero] using this hd' (sub_self _)
  rcases hc.exists_isMaxOn ⟨a, ha⟩ hd.continuousOn.norm with ⟨c, hcU, hc⟩
  have : ∀ x ∈ U, ‖f x‖ = ‖f c‖ :=
    norm_eqOn_of_isPreconnected_of_isMaxOn hd hpc ho hcU hc
  rw [hb₀, ← norm_eq_zero, this a ha, ← this b hb, hb₀, norm_zero]

end MDifferentiableOn

/-!
### Functions holomorphic on the whole manifold

Lemmas in this section were generalized from `𝓘(ℂ, E)` to an unspecified boundaryless
model so that it works, e.g., on a product of two manifolds without a boundary. This can break
`apply MDifferentiable.apply_eq_of_compactSpace`, use
`apply MDifferentiable.apply_eq_of_compactSpace (I := I)` instead or dot notation on an existing
`MDifferentiable` hypothesis.
-/

namespace MDifferentiable

variable [CompactSpace M]

/-- A holomorphic function on a compact complex manifold is locally constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant5c53b8fe78c1e5cc510743a3aee61bda6a46ced1666e68ee3a12a7508d82b2ee.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eae7c83ee47c6ea67b4331aa0c11daa12c71ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
