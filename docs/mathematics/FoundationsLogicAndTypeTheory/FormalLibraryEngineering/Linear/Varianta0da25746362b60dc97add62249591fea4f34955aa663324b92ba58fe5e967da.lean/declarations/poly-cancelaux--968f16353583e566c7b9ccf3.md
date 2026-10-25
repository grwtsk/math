# Poly.cancelAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3071b33ed90a100b8629c0d33f29dc2566e5e880a86bd2e494058fb018440f9",
  "kind": "def",
  "lexical_name": "Poly.cancelAux",
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
  "slug": "poly-cancelaux--968f16353583e566c7b9ccf3",
  "source": {
    "blob": "79480c13b9bfa5b8056b1e35aa7aa1ea2c91f088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:968f16353583e566c7b9ccf3b8148666bda74ab821c14e3f2ecd3e751e92ea0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3071b33ed90a100b8629c0d33f29dc2566e5e880a86bd2e494058fb018440f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Poly.cancelAux (fuel : Nat) (m₁ m₂ r₁ r₂ : Poly) : Poly × Poly :=
  match fuel with
  | 0 => (r₁.reverse ++ m₁, r₂.reverse ++ m₂)
  | fuel + 1 =>
    match m₁, m₂ with
    | m₁, [] => (r₁.reverse ++ m₁, r₂.reverse)
    | [], m₂ => (r₁.reverse, r₂.reverse ++ m₂)
    | (k₁, v₁) :: m₁, (k₂, v₂) :: m₂ =>
      bif Nat.blt v₁ v₂ then
        cancelAux fuel m₁ ((k₂, v₂) :: m₂) ((k₁, v₁) :: r₁) r₂
      else bif Nat.blt v₂ v₁ then
        cancelAux fuel ((k₁, v₁) :: m₁) m₂ r₁ ((k₂, v₂) :: r₂)
      else bif Nat.blt k₁ k₂ then
        cancelAux fuel m₁ m₂ r₁ ((Nat.sub k₂ k₁, v₁) :: r₂)
      else bif Nat.blt k₂ k₁ then
        cancelAux fuel m₁ m₂ ((Nat.sub k₁ k₂, v₁) :: r₁) r₂
      else
        cancelAux fuel m₁ m₂ r₁ r₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Varianta0da25746362b60dc97add62249591fea4f34955aa663324b92ba58fe5e967da.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79480c13b9bfa5b8056b1e35aa7aa1ea2c91f088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
