# evalWhiskerRight_cons_of_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f670d9a0-282b-8413-7ac1-75fdd9bc95ea",
  "kind": "theorem",
  "lexical_name": "evalWhiskerRight_cons_of_of",
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
  "slug": "evalwhiskerright-cons-of-of--e0e9a574573c8c831c43477a",
  "source": {
    "blob": "bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0e9a574573c8c831c43477a7190dcee16c29afcef5358aaebb5fce9acc45cb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f670d9a0-282b-8413-7ac1-75fdd9bc95ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalWhiskerRight_cons_of_of
    {f g h i : a ⟶ b} {j : b ⟶ c}
    {α : f ≅ g} {η : g ⟶ h} {ηs : h ⟶ i} {ηs₁ : h ≫ j ⟶ i ≫ j}
    {η₁ : g ≫ j ⟶ h ≫ j} {η₂ : g ≫ j ⟶ i ≫ j} {η₃ : f ≫ j ⟶ i ≫ j}
    (e_ηs₁ : ηs ▷ j = ηs₁) (e_η₁ : η ▷ j = η₁)
    (e_η₂ : η₁ ≫ ηs₁ = η₂) (e_η₃ : (whiskerRightIso α j).hom ≫ η₂ = η₃) :
    (α.hom ≫ η ≫ ηs) ▷ j = η₃ := by
  simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantaada4d0a2ccd4a2fa7e209047e44376c1589b08398231c9e0d23780699439072.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd2a0c18f6dfba7006f8bf332fd8d362ae1b004` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
