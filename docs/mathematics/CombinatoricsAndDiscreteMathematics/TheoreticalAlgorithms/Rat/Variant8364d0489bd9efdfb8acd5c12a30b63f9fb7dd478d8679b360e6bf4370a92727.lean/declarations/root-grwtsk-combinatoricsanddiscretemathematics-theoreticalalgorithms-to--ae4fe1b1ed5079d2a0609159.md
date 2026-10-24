# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91.Float.toRat?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50a12fa5f838ff932618d8a8f399225eddb8ea29daa776ee3f5edc757bcaffec",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91.Float.toRat?",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-to--ae4fe1b1ed5079d2a0609159",
  "source": {
    "blob": "64628b5bc6724b62eca0176c52b72f828596f38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rat/Variant8364d0489bd9efdfb8acd5c12a30b63f9fb7dd478d8679b360e6bf4370a92727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae4fe1b1ed5079d2a060915992d83cf0ad5c21664a7af7f8c2c75407f01a674a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rat/Variant8364d0489bd9efdfb8acd5c12a30b63f9fb7dd478d8679b360e6bf4370a92727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50a12fa5f838ff932618d8a8f399225eddb8ea29daa776ee3f5edc757bcaffec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToFloat.Variant519bcd766010ab2c6b99ed17d9e3d36b294554f2a960720ebb05948317629a91.Float.toRat? (a : Float) : Option Rat :=
  a.toRatParts.map fun (v, exp) =>
    mkRat (v.sign * v.natAbs <<< exp.toNat) (1 <<< (-exp).toNat)

/--
Convert this floating point number to a rational value,
mapping non-finite values (`inf`, `-inf`, `nan`) to 0.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rat/Variant8364d0489bd9efdfb8acd5c12a30b63f9fb7dd478d8679b360e6bf4370a92727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rat/Variant8364d0489bd9efdfb8acd5c12a30b63f9fb7dd478d8679b360e6bf4370a92727.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64628b5bc6724b62eca0176c52b72f828596f38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
