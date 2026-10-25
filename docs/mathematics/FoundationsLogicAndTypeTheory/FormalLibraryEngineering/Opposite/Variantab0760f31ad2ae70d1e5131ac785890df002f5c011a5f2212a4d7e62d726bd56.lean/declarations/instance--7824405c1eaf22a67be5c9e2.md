# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26dc242758ae3737fdc6dbe8e0db5c6850d49179253681f2aa69c37c97904693",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7824405c1eaf22a67be5c9e2",
  "source": {
    "blob": "d95c9e3c2e94cbffc3b9374da282f1b38d6bd834",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 353,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7824405c1eaf22a67be5c9e2f0fed1adcfed73c4da4bec1816a706f38974f1b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26dc242758ae3737fdc6dbe8e0db5c6850d49179253681f2aa69c37c97904693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance (priority := low) instLawfulOrderMaxOpposite {il : LE α} {im : Max α}
    [LawfulOrderMax α] :
    haveI := il.opposite
    haveI := im.oppositeMin
    LawfulOrderMin α :=
  letI := il.opposite
  letI := im.oppositeMin
  { min_eq_or a b := by
      simp only [Min.min]
      letI := il; letI := im
      exact MaxEqOr.max_eq_or a b
    le_min_iff a b c := by
      simp only [LE.le, Min.min]
      letI := il; letI := im
      exact LawfulOrderSup.max_le_iff b c a }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Opposite/Variantab0760f31ad2ae70d1e5131ac785890df002f5c011a5f2212a4d7e62d726bd56.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95c9e3c2e94cbffc3b9374da282f1b38d6bd834` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
