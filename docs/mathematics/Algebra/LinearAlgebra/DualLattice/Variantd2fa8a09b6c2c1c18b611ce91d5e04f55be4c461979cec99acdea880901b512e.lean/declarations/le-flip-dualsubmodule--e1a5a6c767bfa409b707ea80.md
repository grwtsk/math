# le_flip_dualSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f8a015b-d6e7-3d56-4461-4ed1c4c52f2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0069e2e0-823d-50e9-6696-8d23cb63bc93",
  "kind": "lemma",
  "lexical_name": "le_flip_dualSubmodule",
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
  "slug": "le-flip-dualsubmodule--e1a5a6c767bfa409b707ea80",
  "source": {
    "blob": "63811d51628b38bf4be51a08335bb354422c02a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1a5a6c767bfa409b707ea8099a5dd034c5e68464e26851ea9bbe93cc0b52c4d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0069e2e0-823d-50e9-6696-8d23cb63bc93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_flip_dualSubmodule {N₁ N₂ : Submodule R M} :
    N₁ ≤ B.flip.dualSubmodule N₂ ↔ N₂ ≤ B.dualSubmodule N₁ := by
  show (∀ (x : M), x ∈ N₁ → _) ↔ ∀ (x : M), x ∈ N₂ → _
  simp only [mem_dualSubmodule, Submodule.mem_one, flip_apply]
  exact forall₂_swap

/-- The natural paring of `B.dualSubmodule N` and `N`.
This is bundled as a bilinear map in `BilinForm.dualSubmoduleToDual`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DualLattice/Variantd2fa8a09b6c2c1c18b611ce91d5e04f55be4c461979cec99acdea880901b512e.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63811d51628b38bf4be51a08335bb354422c02a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
