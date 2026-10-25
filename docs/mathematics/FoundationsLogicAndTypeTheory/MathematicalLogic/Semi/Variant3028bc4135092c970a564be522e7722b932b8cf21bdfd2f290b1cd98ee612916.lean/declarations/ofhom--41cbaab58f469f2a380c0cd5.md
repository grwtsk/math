# ofHom₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00d94dff91eac20a61ee288264f7e22b139d99a1d13213dd6140a8b48e871688",
  "kind": "def",
  "lexical_name": "ofHom₂",
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
  "slug": "ofhom--41cbaab58f469f2a380c0cd5",
  "source": {
    "blob": "314d8be94fe34e5c3760811a838eefbb489da690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 450,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41cbaab58f469f2a380c0cd5e856a60fca5851d1e771e68ea29a6b4d7a77030a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00d94dff91eac20a61ee288264f7e22b139d99a1d13213dd6140a8b48e871688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofHom₂ {M N P : SemimoduleCat.{u} R} (f : M →ₗ[R] N →ₗ[R] P) :
    M ⟶ of R (N ⟶ P) :=
  ofHom <| homLinearEquiv.symm.toLinearMap ∘ₗ f

/-- Turn a homomorphism into a bilinear map. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Semi/Variant3028bc4135092c970a564be522e7722b932b8cf21bdfd2f290b1cd98ee612916.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314d8be94fe34e5c3760811a838eefbb489da690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
