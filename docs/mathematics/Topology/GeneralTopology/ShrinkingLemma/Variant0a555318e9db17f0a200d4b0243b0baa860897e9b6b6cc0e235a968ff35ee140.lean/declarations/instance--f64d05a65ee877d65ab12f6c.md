# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24d1324a1b4d5b0c7412fd878645d77f54f620e22d1bbc455297ba023272645b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f64d05a65ee877d65ab12f6c",
  "source": {
    "blob": "2425239e28a40656dbbec1cea36e96cc3c6f0d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f64d05a65ee877d65ab12f6c6068ff2683184f92fe8f59f29d981e6db05e95d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24d1324a1b4d5b0c7412fd878645d77f54f620e22d1bbc455297ba023272645b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : PartialOrder (PartialRefinement u s) where
  le v₁ v₂ := v₁.carrier ⊆ v₂.carrier ∧ ∀ i ∈ v₁.carrier, v₁ i = v₂ i
  le_refl v := ⟨Subset.refl _, fun _ _ => rfl⟩
  le_trans v₁ v₂ v₃ h₁₂ h₂₃ :=
    ⟨Subset.trans h₁₂.1 h₂₃.1, fun i hi => (h₁₂.2 i hi).trans (h₂₃.2 i <| h₁₂.1 hi)⟩
  le_antisymm v₁ v₂ h₁₂ h₂₁ :=
    have hc : v₁.carrier = v₂.carrier := Subset.antisymm h₁₂.1 h₂₁.1
    PartialRefinement.ext _ _
      (funext fun x =>
        if hx : x ∈ v₁.carrier then h₁₂.2 _ hx
        else (v₁.apply_eq hx).trans (Eq.symm <| v₂.apply_eq <| hc ▸ hx))
      hc

/-- If two partial refinements `v₁`, `v₂` belong to a chain (hence, they are comparable)
and `i` belongs to the carriers of both partial refinements, then `v₁ i = v₂ i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant0a555318e9db17f0a200d4b0243b0baa860897e9b6b6cc0e235a968ff35ee140.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2425239e28a40656dbbec1cea36e96cc3c6f0d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
