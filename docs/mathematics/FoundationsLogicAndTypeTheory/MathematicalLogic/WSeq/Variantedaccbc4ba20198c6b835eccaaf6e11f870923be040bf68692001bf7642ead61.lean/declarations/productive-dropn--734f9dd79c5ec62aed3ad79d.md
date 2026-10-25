# productive_dropn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ebd6acbf1478c728edac42f0cbd3c0d9f56017b07f2ce79d3db0233c7b8193d",
  "kind": "instance",
  "lexical_name": "productive_dropn",
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
  "slug": "productive-dropn--734f9dd79c5ec62aed3ad79d",
  "source": {
    "blob": "694d79c06b5c4f11401eea0253a2f8c29d3feaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 873,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:734f9dd79c5ec62aed3ad79d7d542fb42fa7dc6ea58901a5232b0b164eb1e0dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ebd6acbf1478c728edac42f0cbd3c0d9f56017b07f2ce79d3db0233c7b8193d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 873–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance productive_dropn (s : WSeq α) [Productive s] (n) : Productive (drop s n) :=
  ⟨fun m => by rw [← get?_add]; infer_instance⟩
#align stream.wseq.productive_dropn Stream'.WSeq.productive_dropn

/-- Given a productive weak sequence, we can collapse all the `think`s to
  produce a sequence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WSeq/Variantedaccbc4ba20198c6b835eccaaf6e11f870923be040bf68692001bf7642ead61.lean#L873).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694d79c06b5c4f11401eea0253a2f8c29d3feaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
