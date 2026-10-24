# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f56f560807e6b399ea84d865e51ed49ca3aecf3ea4ec6f07f54064428d4750a",
  "kind": "example",
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
  "slug": "example--a23eb9bad2aba6bf18488bc8",
  "source": {
    "blob": "d0e5de187f67870f7f4b1a6f850a2bafef54da47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 16,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant47d9a7399648bcbd3d64834ba15bd8ddf026210e26f5405784b63b91c0c64b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a23eb9bad2aba6bf18488bc8410e78cd29bf09176e4969132136245c9c677d43",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant47d9a7399648bcbd3d64834ba15bd8ddf026210e26f5405784b63b91c0c64b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f56f560807e6b399ea84d865e51ed49ca3aecf3ea4ec6f07f54064428d4750a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (hyp : f₁ ≫ g₁ = f₂ ≫ g₂) : f₁ ≫ g₁ ≫ h ≫ l = (f₂ ≫ g₂) ≫ (h ≫ l) := by
  conv =>
    rhs
    slice 2 3
  show f₁ ≫ g₁ ≫ h ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 1 2
    rw [hyp]
  show ((f₂ ≫ g₂) ≫ h) ≫ l = f₂ ≫ (g₂ ≫ h) ≫ l
  conv =>
    lhs
    slice 2 3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant47d9a7399648bcbd3d64834ba15bd8ddf026210e26f5405784b63b91c0c64b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant47d9a7399648bcbd3d64834ba15bd8ddf026210e26f5405784b63b91c0c64b8c.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0e5de187f67870f7f4b1a6f850a2bafef54da47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
