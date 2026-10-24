# isLimitKernelFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3767d5edb189a3b7fe9b5c2d0434407e7722148fc2f0ad3b042f272999c1193e",
  "kind": "def",
  "lexical_name": "isLimitKernelFork",
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
  "slug": "islimitkernelfork--e18e3d1e370e2bc39aae3f20",
  "source": {
    "blob": "ee49efb3a75e36d68f20ae42bdeb3a9f26972b41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e18e3d1e370e2bc39aae3f20b67801b9fb1382ce0c71bd84f1d078d00a6b30ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3767d5edb189a3b7fe9b5c2d0434407e7722148fc2f0ad3b042f272999c1193e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isLimitKernelFork : IsLimit (KernelFork.ofι _ (ιK_mor₁ hT α)) :=
  KernelFork.IsLimit.ofι _ _ _
    (fun x₁ hx₁ ↦ (exists_lift_ιK hι hT hT' x₁ hx₁).choose_spec)
    (fun x₁ hx₁ m hm ↦ by
      have := mono_ιK hι hT hT'
      rw [← cancel_mono (ιK f₃ α), (exists_lift_ιK hι hT hT' x₁ hx₁).choose_spec, hm])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianSubcategory/Variantf4bf1975e29b9aa280b1abdbe797fa9b480d95c8fe55cd85f69119a8c7270e8d.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee49efb3a75e36d68f20ae42bdeb3a9f26972b41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
