# apply_eq_of_isPreconnected_isCompact_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36b74fb1f02c8dc0b475f4f539a83723ca56980c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:babddc51-9de1-3c2a-1981-e10eaa69c345",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bea9d97f-6385-8e4c-5c73-397ef488f065",
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
  "slug": "apply-eq-of-ispreconnected-iscompact-isopen--da486bf0851b720112a169f0",
  "source": {
    "blob": "36b74fb1f02c8dc0b475f4f539a83723ca56980c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da486bf0851b720112a169f0b9e31e7bc8262c0377e620b96ea432278dac5d13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bea9d97f-6385-8e4c-5c73-397ef488f065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_eq_of_isPreconnected_isCompact_isOpen {f : M → F} {U : Set M} {a b : M}
     (hd : MDifferentiableOn I 𝓘(ℂ, F) f U) (hpc : IsPreconnected U) (hc : IsCompact U)
     (ho : IsOpen U) (ha : a ∈ U) (hb : b ∈ U) : f a = f b := by
  refine ?_
  -- Subtract `f b` to avoid the assumption `[StrictConvexSpace ℝ F]`
  wlog hb₀ : f b = 0 generalizing f
  · have hd' : MDifferentiableOn I 𝓘(ℂ, F) (f · - f b) U := fun x hx ↦
      ⟨(hd x hx).1.sub continuousWithinAt_const, (hd x hx).2.sub_const _⟩
    simpa [sub_eq_zero] using this hd' (sub_self _)
  rcases hc.exists_isMaxOn ⟨a, ha⟩ hd.continuousOn.norm with ⟨c, hcU, hc⟩
  have : ∀ x ∈ U, ‖f x‖ = ‖f c‖ :=
    norm_eqOn_of_isPreconnected_of_isMaxOn hd hpc ho hcU hc
  rw [hb₀, ← norm_eq_zero, this a ha, ← this b hb, hb₀, norm_zero]

end MDifferentiableOn

/-!
### Functions holomorphic on the whole manifold

Porting note: lemmas in this section were generalized from `𝓘(ℂ, E)` to an unspecified boundaryless
model so that it works, e.g., on a product of two manifolds without a boundary. This can break
`apply MDifferentiable.apply_eq_of_compactSpace`, use
`apply MDifferentiable.apply_eq_of_compactSpace (I := I)` instead or dot notation on an existing
`MDifferentiable` hypothesis.
-/

namespace MDifferentiable

/-- A holomorphic function on a compact complex manifold is locally constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant665ae901f6e794faa0621a7c4c7437b101905aeec78cdb48303775d85bb7e4a0.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36b74fb1f02c8dc0b475f4f539a83723ca56980c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
