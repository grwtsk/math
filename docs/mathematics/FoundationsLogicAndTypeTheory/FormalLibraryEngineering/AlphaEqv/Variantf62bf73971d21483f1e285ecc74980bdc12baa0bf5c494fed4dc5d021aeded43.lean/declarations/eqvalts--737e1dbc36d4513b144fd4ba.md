# eqvAlts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c232ef21d9af7c152bf665b0d51265843ef66e728215014f9877ceb6686d0f1",
  "kind": "def",
  "lexical_name": "eqvAlts",
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
  "slug": "eqvalts--737e1dbc36d4513b144fd4ba",
  "source": {
    "blob": "3d40535730da2230421c4599cb819a19c9852b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:737e1dbc36d4513b144fd4baa6d7eab349bd7522aaee75685cf1a515346b7a41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c232ef21d9af7c152bf665b0d51265843ef66e728215014f9877ceb6686d0f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eqvAlts (alts₁ alts₂ : Array (Alt pu)) : EqvM Bool := do
  if alts₁.size = alts₂.size then
    let alts₁ := sortAlts alts₁
    let alts₂ := sortAlts alts₂
    for alt₁ in alts₁, alt₂ in alts₂ do
      match alt₁, alt₂ with
      | .alt ctorName₁ ps₁ k₁ _, .alt ctorName₂ ps₂ k₂ _ =>
        unless ctorName₁ == ctorName₂ do return false
        unless (← withParams ps₁ ps₂ (eqv k₁ k₂)) do return false
      | .ctorAlt i₁ k₁ _, .ctorAlt i₂ k₂ _ =>
        unless i₁ == i₂ do return false
        unless ← eqv k₁ k₂ do return false
      | .default k₁, .default k₂ => unless (← eqv k₁ k₂) do return false
      | _, _ => return false
    return true
  else
    return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d40535730da2230421c4599cb819a19c9852b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
