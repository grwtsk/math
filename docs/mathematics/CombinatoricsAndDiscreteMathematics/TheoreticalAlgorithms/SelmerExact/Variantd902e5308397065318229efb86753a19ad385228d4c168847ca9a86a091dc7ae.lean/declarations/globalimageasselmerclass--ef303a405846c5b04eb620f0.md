# globalImageAsSelmerClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6e7dbf9e0e91241cc6ddfb03cdbf7834a20cbcb69c30122d68bf3fb6638973d",
  "kind": "def",
  "lexical_name": "globalImageAsSelmerClass",
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
  "slug": "globalimageasselmerclass--ef303a405846c5b04eb620f0",
  "source": {
    "blob": "53d5c4a95b29ada578dc1ea6f5adb9b534a17619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef303a405846c5b04eb620f0628a2ed1d324dfd37d3e4e94cc3353ba33af255e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6e7dbf9e0e91241cc6ddfb03cdbf7834a20cbcb69c30122d68bf3fb6638973d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def globalImageAsSelmerClass
    {P : FiniteSelmerProblem.{u, u, u}}
    (K : FiniteKummerSelmerData P)
    (x : K.globalKummer.Domain) :
    FiniteSelmerClass P where
  h1Class := K.globalKummer.toH1 x
  inSelmer := globalImageLandsInSelmer_of_local_conditions K x

end FiniteKummerSelmerData

/--
Abstract finite exactness data for a Kummer-to-Selmer sequence.

This is not a placeholder saying that an exact sequence is specified.  It names
the obstruction object, the obstruction map out of constructed Selmer classes,
the zero obstruction, injectivity of the Kummer map, kernel/image exactness, and
surjectivity onto the obstruction object.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelmerExact/Variantd902e5308397065318229efb86753a19ad385228d4c168847ca9a86a091dc7ae.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53d5c4a95b29ada578dc1ea6f5adb9b534a17619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
