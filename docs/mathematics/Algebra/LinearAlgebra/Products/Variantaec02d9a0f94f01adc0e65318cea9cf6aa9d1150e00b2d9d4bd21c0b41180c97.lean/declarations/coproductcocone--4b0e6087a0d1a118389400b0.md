# coproductCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:203454e88192b227244b9ada964e1456136184c6ff8d4d7cd0176541d7aa8cd5",
  "kind": "def",
  "lexical_name": "coproductCocone",
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
  "slug": "coproductcocone--4b0e6087a0d1a118389400b0",
  "source": {
    "blob": "2d0b0349a186d3532d297f1a991de6366445231d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b0e6087a0d1a118389400b0c88ee103f0cfe5e3cc6df94885bd397637c654d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:203454e88192b227244b9ada964e1456136184c6ff8d4d7cd0176541d7aa8cd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coproductCocone : Cofan Z :=
  Cofan.mk (ModuleCat.of R (⨁ i : ι, Z i)) fun i => ofHom (DirectSum.lof R ι (fun i ↦ Z i) i)

/-- The concrete coproduct cone is limiting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Products/Variantaec02d9a0f94f01adc0e65318cea9cf6aa9d1150e00b2d9d4bd21c0b41180c97.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0b0349a186d3532d297f1a991de6366445231d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
