# Multipliable.sigma'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ff31a66-2513-a4bd-0462-062252cdd92c",
  "kind": "theorem",
  "lexical_name": "Multipliable.sigma'",
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
  "slug": "multipliable-sigma--c8b89ae43ce02418c99f74be",
  "source": {
    "blob": "8caa29a9b24558bb89283d1d32e5c30d146cb1cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 155,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8b89ae43ce02418c99f74be9c3997ee4689f3dfb4c56ffd7d655a2ab487c6e1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff31a66-2513-a4bd-0462-062252cdd92c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Multipliable.sigma' {γ : β → Type*} {f : (Σ b : β, γ b) → α} (ha : Multipliable f)
    (hf : ∀ b, Multipliable fun c ↦ f ⟨b, c⟩) : Multipliable fun b ↦ ∏' c, f ⟨b, c⟩ :=
  (ha.hasProd.sigma fun b ↦ (hf b).hasProd).multipliable

end RegularSpace

section T3Space

variable [T3Space α]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Constructions/Varianta4618aa2573c1994fc72718b9169d9bacebaf5cc160bd1a31379caa3cdc9c74c.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8caa29a9b24558bb89283d1d32e5c30d146cb1cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
