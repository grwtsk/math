# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3312e6467d36dfa10e6584aaffe143a35d555b63e77998df29e76f333a41ee65",
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
  "slug": "instance--1fcf8fb540d205a307d9d1de",
  "source": {
    "blob": "4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fcf8fb540d205a307d9d1ded10cb2940e359c5e182433b033beebd92c41dacf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3312e6467d36dfa10e6584aaffe143a35d555b63e77998df29e76f333a41ee65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SemilatticeSup (Box ι) :=
  { (inferInstance : PartialOrder (Box ι)),
    (inferInstance : Sup (Box ι)) with
    le_sup_left := fun _ _ ↦ le_iff_bounds.2 ⟨inf_le_left, le_sup_left⟩
    le_sup_right := fun _ _ ↦ le_iff_bounds.2 ⟨inf_le_right, le_sup_right⟩
    sup_le := fun _ _ _ h₁ h₂ ↦ le_iff_bounds.2
      ⟨le_inf (antitone_lower h₁) (antitone_lower h₂),
        sup_le (monotone_upper h₁) (monotone_upper h₂)⟩ }

/-!
### `WithBot (Box ι)`

In this section we define coercion from `WithBot (Box ι)` to `Set (ι → ℝ)` by sending `⊥` to `∅`.
-/

-- Porting note: added
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
