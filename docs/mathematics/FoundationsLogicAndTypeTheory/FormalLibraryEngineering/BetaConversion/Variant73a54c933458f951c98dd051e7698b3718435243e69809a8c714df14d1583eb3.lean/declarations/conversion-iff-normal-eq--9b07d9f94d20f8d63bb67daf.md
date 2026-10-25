# conversion_iff_normal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e67df5b-4a4f-62d1-4f37-eb8b2af7b47f",
  "kind": "theorem",
  "lexical_name": "conversion_iff_normal_eq",
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
  "slug": "conversion-iff-normal-eq--9b07d9f94d20f8d63bb67daf",
  "source": {
    "blob": "cd45c6d0ffb90ff613efc339859c893cebb61ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b07d9f94d20f8d63bb67dafc24a7d286d9d6cb28205d4189c62057db9cb2e0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e67df5b-4a4f-62d1-4f37-eb8b2af7b47f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conversion_iff_normal_eq {first second firstNormal secondNormal : Expr S}
    (firstPath : Reduces first firstNormal) (secondPath : Reduces second secondNormal)
    (normalFirst : Normal firstNormal) (normalSecond : Normal secondNormal) :
    Converts first second ↔ firstNormal = secondNormal := by
  constructor
  · intro converted
    have normalized : Converts firstNormal secondNormal :=
      .trans _ _ _ (.symm _ _ firstPath.converts)
        (.trans _ _ _ converted secondPath.converts)
    obtain ⟨joined, left, right⟩ := normalized.join
    exact (normalFirst.reduces_eq left).trans (normalSecond.reduces_eq right).symm
  · intro equality
    exact .trans _ _ _ firstPath.converts (equality ▸ .symm _ _ secondPath.converts)

/-- The normalizer and an effective sort equality give an executable partial conversion checker. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BetaConversion/Variant73a54c933458f951c98dd051e7698b3718435243e69809a8c714df14d1583eb3.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd45c6d0ffb90ff613efc339859c893cebb61ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
