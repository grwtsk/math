# instSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:505a54e89aa8cda81ffaf8c9d7dc9b1b68144f5d35a97d9e59f1db15db365eac",
  "kind": "def",
  "lexical_name": "instSMul",
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
  "slug": "instsmul--f33c82fa1fc42cf9ef3a22b6",
  "source": {
    "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 945,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33c82fa1fc42cf9ef3a22b63136bba0dc8d0b53580e29e4cd192272754f16e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:505a54e89aa8cda81ffaf8c9d7dc9b1b68144f5d35a97d9e59f1db15db365eac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 945–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def instSMul : SMul (Filter α) (Filter β) :=
  ⟨/- This is defeq to `map₂ (•) f g`, but the hypothesis unfolds to `t₁ • t₂ ⊆ s` rather than all
  the way to `Set.image2 (•) t₁ t₂ ⊆ s`. -/
  fun f g => { map₂ (· • ·) f g with sets := { s | ∃ t₁ t₂, t₁ ∈ f ∧ t₂ ∈ g ∧ t₁ • t₂ ⊆ s } }⟩
#align filter.has_smul Filter.instSMul
#align filter.has_vadd Filter.instVAdd

scoped[Pointwise] attribute [instance] Filter.instSMul Filter.instVAdd

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean#L945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449673628534b0e914cd919cd9dfd65b15756cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
