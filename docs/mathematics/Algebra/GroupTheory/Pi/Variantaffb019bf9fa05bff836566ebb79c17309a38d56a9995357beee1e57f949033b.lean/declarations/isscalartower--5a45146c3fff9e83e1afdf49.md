# isScalarTower''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76ad3ce92d7ccce6ee77f40562bb452a8ee3aaef617c5f526edec631bba8e284",
  "kind": "instance",
  "lexical_name": "isScalarTower''",
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
  "slug": "isscalartower--5a45146c3fff9e83e1afdf49",
  "source": {
    "blob": "7621b3ea3b02554a2966c4684e294d1377212410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a45146c3fff9e83e1afdf497eb51073de9f5d2b301efb6572103552291155ee",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76ad3ce92d7ccce6ee77f40562bb452a8ee3aaef617c5f526edec631bba8e284`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isScalarTower'' [∀ i, SMul (α i) (β i)] [∀ i, SMul (β i) (γ i)] [∀ i, SMul (α i) (γ i)]
    [∀ i, IsScalarTower (α i) (β i) (γ i)] : IsScalarTower (∀ i, α i) (∀ i, β i) (∀ i, γ i) where
  smul_assoc x y z := funext fun i ↦ smul_assoc (x i) (y i) (z i)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variantaffb019bf9fa05bff836566ebb79c17309a38d56a9995357beee1e57f949033b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7621b3ea3b02554a2966c4684e294d1377212410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
