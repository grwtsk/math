# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0485ce23dce18f748ded67c169e1add38bc7227675afe82f6e00e2934998b2f0",
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
  "slug": "instance--0c2d8bfa694ee38d7796d2f3",
  "source": {
    "blob": "af72e3fe717e1d7fecd4defc5613fcf324547514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c2d8bfa694ee38d7796d2f38661d86365b759a2082ad0d89e27596f505dfe1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0485ce23dce18f748ded67c169e1add38bc7227675afe82f6e00e2934998b2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Lattice CircleDeg1Lift where
  sup f g :=
    { toFun := fun x => max (f x) (g x)
      monotone' := fun x y h => max_le_max (f.mono h) (g.mono h)
      -- TODO: generalize to `Monotone.max`
      map_add_one' := fun x => by simp [max_add_add_right] }
  le f g := ∀ x, f x ≤ g x
  le_refl f x := le_refl (f x)
  le_trans f₁ f₂ f₃ h₁₂ h₂₃ x := le_trans (h₁₂ x) (h₂₃ x)
  le_antisymm f₁ f₂ h₁₂ h₂₁ := ext fun x => le_antisymm (h₁₂ x) (h₂₁ x)
  le_sup_left f g x := le_max_left (f x) (g x)
  le_sup_right f g x := le_max_right (f x) (g x)
  sup_le f₁ f₂ f₃ h₁ h₂ x := max_le (h₁ x) (h₂ x)
  inf f g :=
    { toFun := fun x => min (f x) (g x)
      monotone' := fun x y h => min_le_min (f.mono h) (g.mono h)
      map_add_one' := fun x => by simp [min_add_add_right] }
  inf_le_left f g x := min_le_left (f x) (g x)
  inf_le_right f g x := min_le_right (f x) (g x)
  le_inf f₁ f₂ f₃ h₂ h₃ x := le_min (h₂ x) (h₃ x)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af72e3fe717e1d7fecd4defc5613fcf324547514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
