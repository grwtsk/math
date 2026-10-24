# shortWeierstrassDiscriminantExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:302a0123f465cc4b4de5c64961be9c303e3dcd46891657af60272d8bbb8c4f39",
  "kind": "def",
  "lexical_name": "shortWeierstrassDiscriminantExpression",
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
  "slug": "shortweierstrassdiscriminantexpression--aaaed5bc9dee034924f02fd2",
  "source": {
    "blob": "c775c6393b8c111164a5ed0166490ef35f1ca1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaaed5bc9dee034924f02fd27fd0b8f4038cd6bfcc458b461c0a017651e45631",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:302a0123f465cc4b4de5c64961be9c303e3dcd46891657af60272d8bbb8c4f39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shortWeierstrassDiscriminantExpression
    {K : FieldLike.{u}}
    (E : ShortWeierstrass K) :
    K.Carrier :=
  let four := natScalar K 4
  let sixteen := natScalar K 16
  let twentySeven := natScalar K 27
  K.neg
    (K.mul sixteen
      (K.add
        (K.mul four (K.cube E.A))
        (K.mul twentySeven (K.square E.B))))

/--
Certificate that the stored discriminant agrees with the typed
short-Weierstrass discriminant expression and is nonzero.

This is the next theorem-facing gate before smoothness or group-law construction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c775c6393b8c111164a5ed0166490ef35f1ca1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
