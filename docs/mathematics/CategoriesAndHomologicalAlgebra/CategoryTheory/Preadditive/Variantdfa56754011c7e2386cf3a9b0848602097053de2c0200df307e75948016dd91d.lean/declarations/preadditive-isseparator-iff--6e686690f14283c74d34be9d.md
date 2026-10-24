# Preadditive.isSeparator_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ad9d5bf-fcd2-70e8-6204-4e6b82b5b179",
  "kind": "theorem",
  "lexical_name": "Preadditive.isSeparator_iff",
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
  "slug": "preadditive-isseparator-iff--6e686690f14283c74d34be9d",
  "source": {
    "blob": "28ae7733f2a8cd81dee2017642b30977e2c05a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantdfa56754011c7e2386cf3a9b0848602097053de2c0200df307e75948016dd91d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e686690f14283c74d34be9dd260506b8f7f6e4005a10b98830cd9ef26f5e47c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantdfa56754011c7e2386cf3a9b0848602097053de2c0200df307e75948016dd91d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ad9d5bf-fcd2-70e8-6204-4e6b82b5b179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Preadditive.isSeparator_iff (G : C) :
    IsSeparator G ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ h : G ⟶ X, h ≫ f = 0) → f = 0 :=
  ⟨fun hG X Y f hf => hG.def _ _ (by simpa only [Limits.comp_zero] using hf), fun hG =>
    (isSeparator_def _).2 fun X Y f g hfg =>
      sub_eq_zero.1 <| hG _ (by simpa only [Preadditive.comp_sub, sub_eq_zero] using hfg)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantdfa56754011c7e2386cf3a9b0848602097053de2c0200df307e75948016dd91d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantdfa56754011c7e2386cf3a9b0848602097053de2c0200df307e75948016dd91d.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28ae7733f2a8cd81dee2017642b30977e2c05a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
