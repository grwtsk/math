# withBotCongr_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0111067d54b78c75b11b6c4620a4ee98e4931e0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2950de0c617ea4ee07610e20169572a413c1a9af2b3b707c5a9a415dc1ac957.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d2ca767-357d-59c5-fa37-7b09f115c384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48e430e2-deb7-7360-d7da-e4ccb5a72a6f",
  "kind": "theorem",
  "lexical_name": "withBotCongr_trans",
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
  "slug": "withbotcongr-trans--5db732f4b8d6779d5fbbf757",
  "source": {
    "blob": "0111067d54b78c75b11b6c4620a4ee98e4931e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 189,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variantc2950de0c617ea4ee07610e20169572a413c1a9af2b3b707c5a9a415dc1ac957.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5db732f4b8d6779d5fbbf757c88d3e23d0cc1109258c0d270d7163ef6debb09b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variantc2950de0c617ea4ee07610e20169572a413c1a9af2b3b707c5a9a415dc1ac957.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e430e2-deb7-7360-d7da-e4ccb5a72a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withBotCongr_trans (e₁ : α ≃o β) (e₂ : β ≃o γ) :
    (e₁.trans e₂).withBotCongr = e₁.withBotCongr.trans e₂.withBotCongr :=
  RelIso.toEquiv_injective <| e₁.toEquiv.withBotCongr_trans e₂.toEquiv

end OrderIso

namespace SupHom

variable [SemilatticeSup α] [SemilatticeSup β] [SemilatticeSup γ]

/-- Adjoins a `⊤` to the domain and codomain of a `SupHom`. -/
@[to_dual (attr := simps) /-- Adjoins a `⊥` to the domain and codomain of an `InfHom`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variantc2950de0c617ea4ee07610e20169572a413c1a9af2b3b707c5a9a415dc1ac957.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variantc2950de0c617ea4ee07610e20169572a413c1a9af2b3b707c5a9a415dc1ac957.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0111067d54b78c75b11b6c4620a4ee98e4931e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
