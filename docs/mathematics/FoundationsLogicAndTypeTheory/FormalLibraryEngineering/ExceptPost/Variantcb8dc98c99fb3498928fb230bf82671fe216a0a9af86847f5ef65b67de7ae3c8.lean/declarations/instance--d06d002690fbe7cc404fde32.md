# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:769253e775fd8d10073f26bc12f6ca5c800157494b5dae8d706ba8198d857acc",
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
  "slug": "instance--d06d002690fbe7cc404fde32",
  "source": {
    "blob": "8e2cb89a4faef91d76ef50cf3ee07f4ec1caa0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d06d002690fbe7cc404fde324f27a615129f845a92d20319bf5197140b66d8e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:769253e775fd8d10073f26bc12f6ca5c800157494b5dae8d706ba8198d857acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [PartialOrder eh] [PartialOrder et] : PartialOrder (EPost.Cons eh et) where
  rel p q := (⟨p.head, p.tail⟩ : eh ×' et) ⊑ ⟨q.head, q.tail⟩
  rel_refl := PartialOrder.rel_refl
  rel_trans h1 h2 := PartialOrder.rel_trans h1 h2
  rel_antisymm := fun {p q} h1 h2 => by
    have := PartialOrder.rel_antisymm (α := eh ×' et) h1 h2
    cases p; cases q; cases this; rfl

/-- Componentwise complete lattice on `EPost.Cons`, via `PProd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExceptPost/Variantcb8dc98c99fb3498928fb230bf82671fe216a0a9af86847f5ef65b67de7ae3c8.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e2cb89a4faef91d76ef50cf3ee07f4ec1caa0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
