# restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0da2e33d05e4ecf31197af6ae1048078518f82be4735a9f332ffc81059aa82e",
  "kind": "def",
  "lexical_name": "restrictScalars",
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
  "slug": "restrictscalars--80baa9098328663cc447752f",
  "source": {
    "blob": "9da44c90b8c10b542c9c8bb8daa8daa4306e09e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80baa9098328663cc447752fe682998410d17c7fc9130db36838f27e1941a379",
  "verification": {
    "reference": "docs/verification/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0da2e33d05e4ecf31197af6ae1048078518f82be4735a9f332ffc81059aa82e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def restrictScalars (p : FormalMultilinearSeries 𝕜' E F) :
    FormalMultilinearSeries 𝕜 E F := fun n => (p n).restrictScalars 𝕜
#align formal_multilinear_series.restrict_scalars FormalMultilinearSeries.restrictScalars

end FormalMultilinearSeries

end

namespace FormalMultilinearSeries

variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E] [NormedAddCommGroup F]
  [NormedSpace 𝕜 F] [NormedAddCommGroup G] [NormedSpace 𝕜 G]

variable (p : FormalMultilinearSeries 𝕜 E F)

/-- Forgetting the zeroth term in a formal multilinear series, and interpreting the following terms
as multilinear maps into `E →L[𝕜] F`. If `p` corresponds to the Taylor series of a function, then
`p.shift` is the Taylor series of the derivative of the function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FormalMultilinearSeries/Variantbd700e63b2f15a02292006ffc63ce2577fdafa667175465fbcc89f57500e0365.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9da44c90b8c10b542c9c8bb8daa8daa4306e09e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
