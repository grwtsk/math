# instDecidableEqSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57a27dcce1c6f8ecd9e826e3d21a6a505953275064b38b00932eb5352b3c10f6",
  "kind": "instance",
  "lexical_name": "instDecidableEqSigma",
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
  "slug": "instdecidableeqsigma--1e94f82967f3ec38e7eb545d",
  "source": {
    "blob": "b2af528775a9567e486dc51dc2474eb0b9088343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e94f82967f3ec38e7eb545d581b6ae99ef5f78a986063fc2a934574f2cc5915",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57a27dcce1c6f8ecd9e826e3d21a6a505953275064b38b00932eb5352b3c10f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDecidableEqSigma [h₁ : DecidableEq α] [h₂ : ∀ a, DecidableEq (β a)] :
    DecidableEq (Sigma β)
  | ⟨a₁, b₁⟩, ⟨a₂, b₂⟩ =>
    match a₁, b₁, a₂, b₂, h₁ a₁ a₂ with
    | _, b₁, _, b₂, isTrue (Eq.refl _) =>
      match b₁, b₂, h₂ _ b₁ b₂ with
      | _, _, isTrue (Eq.refl _) => isTrue rfl
      | _, _, isFalse n => isFalse fun h ↦ Sigma.noConfusion h fun _ e₂ ↦ n <| eq_of_heq e₂
    | _, _, _, _, isFalse n => isFalse fun h ↦ Sigma.noConfusion h fun e₁ _ ↦ n e₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant773eec0ffd1f97144d2f301f1e1202813d615038f7d9c31e7e6300654e0b7e8b.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2af528775a9567e486dc51dc2474eb0b9088343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
