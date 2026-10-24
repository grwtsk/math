# MulEquiv.toCommMonCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93a75d74dc1ca09ff5bdabb6656e4222b10dfe843488500c9c964d732ea69482",
  "kind": "def",
  "lexical_name": "MulEquiv.toCommMonCatIso",
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
  "slug": "mulequiv-tocommmoncatiso--5aa74e251907b4d2ed710b8b",
  "source": {
    "blob": "f44a57bb65e8815552ca5a07f155a430eaa536f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 427,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aa74e251907b4d2ed710b8b34b1ca02966324c1770127f5bba778b87756d29a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93a75d74dc1ca09ff5bdabb6656e4222b10dfe843488500c9c964d732ea69482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toCommMonCatIso (e : X ≃* Y) : CommMonCat.of X ≅ CommMonCat.of Y where
  hom := CommMonCat.ofHom e.toMonoidHom
  inv := CommMonCat.ofHom e.symm.toMonoidHom

/-- Build an isomorphism in the category `AddCommMonCat`
from an `AddEquiv` between `AddCommMonoid`s. -/
add_decl_doc AddEquiv.toAddCommMonCatIso

end

namespace CategoryTheory.Iso

/-- Build a `MulEquiv` from an isomorphism in the category `MonCat`. -/
@[to_additive addMonCatIsoToAddEquiv
      "Build an `AddEquiv` from an isomorphism in the category\n`AddMonCat`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44a57bb65e8815552ca5a07f155a430eaa536f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
