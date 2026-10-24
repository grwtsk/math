# ModularFormClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:958850adf3c03c5c18749e036bffb5173f4bfd7122effa1fb00e4bdc59de9bb4",
  "kind": "class",
  "lexical_name": "ModularFormClass",
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
  "slug": "modularformclass--7819b5afe7bd4f8256013d7a",
  "source": {
    "blob": "abf70e98aafbf0871a208dbd80e296934efc75a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7819b5afe7bd4f8256013d7afb2b98c08d9b909092b41f2b00a84f7f9e8eb515",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:958850adf3c03c5c18749e036bffb5173f4bfd7122effa1fb00e4bdc59de9bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ModularFormClass (F : Type*) (Γ : outParam <| Subgroup (SL(2, ℤ))) (k : outParam ℤ)
    extends SlashInvariantFormClass F Γ k where
  holo : ∀ f : F, MDifferentiable 𝓘(ℂ) 𝓘(ℂ) (f : ℍ → ℂ)
  bdd_at_infty : ∀ (f : F) (A : SL(2, ℤ)), IsBoundedAtImInfty (f ∣[k] A)
#align modular_form_class ModularFormClass

/-- `cusp_form_class F Γ k` says that `F` is a type of bundled functions that extend
`slash_invariant_form_class` by requiring that the functions be holomorphic and zero
at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant9ac55f3bc22867e03df7bd13b01d30009294939725f5d4d5e10cd4249da213da.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abf70e98aafbf0871a208dbd80e296934efc75a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
