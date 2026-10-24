# serreDerivativeOneE2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc168a62b54ae5cb0c66965a5f73d36557e7d3e08ee085d3467b8f1149b9aeb5",
  "kind": "def",
  "lexical_name": "serreDerivativeOneE2",
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
  "slug": "serrederivativeonee2--548741b5e175de9fa2ab96e7",
  "source": {
    "blob": "653c57c6be7cce24fd29629a58a15858ca38943f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 115,
    "path": "GRWTSK/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:548741b5e175de9fa2ab96e77dbc4ff7d5e3ae3d48c22fb485533a604773f870",
  "verification": {
    "reference": "docs/verification/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc168a62b54ae5cb0c66965a5f73d36557e7d3e08ee085d3467b8f1149b9aeb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def serreDerivativeOneE2 : ModularForm 𝒮ℒ 4 where
  toFun := serreDerivative 1 E2
  slash_action_eq' := fun _ ⟨γ, hγ⟩ ↦ hγ ▸ serreDerivativeOne_E2_slash γ
  holo' := serreDerivative_mdifferentiable 1 E2_mdifferentiable
  bdd_at_cusps' hc := (OnePoint.isBoundedAt_iff_forall_SL2Z hc).mpr fun γ _ ↦
    (serreDerivativeOne_E2_slash γ).symm ▸
      isBoundedAtImInfty_serreDerivative 1 E2_mdifferentiable isBoundedAtImInfty_E2

/-- **Ramanujan's formula for `E₂`**: `∂₁ E₂ = -E₄ / 12`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RamanujanFormula/Variant30ddd56b24380b6da8213386f63bbac26c2d6018a6e7791d5a26f3d37cda409a.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `653c57c6be7cce24fd29629a58a15858ca38943f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
