# _root_.GRWTSK.Algebra.LinearAlgebra.CoalgHom.Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.CoalgHom.ofClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:989be747adffb762f447c92d4ba04efffad67416cc5860186f1c4868c419cbd3",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.CoalgHom.Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.CoalgHom.ofClass",
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
  "slug": "root-grwtsk-algebra-linearalgebra-coalghom-variant9938abb2c0b61534fca535--84488a637827ca6fd61f047f",
  "source": {
    "blob": "d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84488a637827ca6fd61f047fadaed918199896e2b8d46e30a440d0a88149ed1d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:989be747adffb762f447c92d4ba04efffad67416cc5860186f1c4868c419cbd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.LinearAlgebra.CoalgHom.Variant9938abb2c0b61534fca535fe6b1b4afa99b4470cf0bd1fe48512a16922efe42d.CoalgHom.ofClass (f : F) : A →ₗc[R] B :=
  { (f : A →ₗ[R] B) with
    toFun := f
    counit_comp := CoalgHomClass.counit_comp f
    map_comp_comul := CoalgHomClass.map_comp_comul f }

@[deprecated (since := "2026-09-09")] alias toCoalgHom := CoalgHom.ofClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
