# proj₁AdjDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd3aa280156e3e74a90797a95322718aead8096d16524d23633b92009c04d04b",
  "kind": "def",
  "lexical_name": "proj₁AdjDiag",
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
  "slug": "proj-adjdiag--854a6cd664daf8466c2dd138",
  "source": {
    "blob": "457b46021488ec3d07cb3909e9b847d4a15adfb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 113,
    "path": "GRWTSK/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:854a6cd664daf8466c2dd138620356feab148c775903cd00012132a1602abac9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd3aa280156e3e74a90797a95322718aead8096d16524d23633b92009c04d04b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proj₁AdjDiag : proj₁ ⊣ diag where
  unit.app X := TopPair.ofHom (𝟙 X.fst) X.map
  unit.naturality X Y f := MorphismProperty.Arrow.Hom.ext f.w (by cat_disch)
  counit.app X := 𝟙 X

set_option backward.defeqAttrib.useBackward true in
/-- The unique morphism (X, ∅) ⟶ (X, A) that is the identity on X. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/TopPair/Variant4700e7344ee5b4d44e390bbfdaa9745d553e2a63b51bc26093b75b4c2b40c527.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457b46021488ec3d07cb3909e9b847d4a15adfb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
