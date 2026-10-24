# symbols_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de1abcff-598c-0fc5-1974-8df41bdb200c",
  "kind": "theorem",
  "lexical_name": "symbols_compatible",
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
  "slug": "symbols-compatible--1418d9368a729a9d17d5f77f",
  "source": {
    "blob": "5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 254,
    "path": "GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1418d9368a729a9d17d5f77f085ca777f707a9aa198535d715ccfff2d740d71e",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de1abcff-598c-0fc5-1974-8df41bdb200c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symbols_compatible
    (datum : CompatibleZeroDatum sheaf Coverage coverageCompatible z)
    {source target : Vertex} (arrow : sheaf.edge source target) :
    (datum.data source).symbols = (datum.data target).symbols := by
  have hencode := congrArg
    (fun map : Stalk source →L[ℚ] Symbols => map (datum.data source).source)
    (sheaf.encoded_source arrow)
  simp only [ContinuousLinearMap.comp_apply] at hencode
  calc
    (datum.data source).symbols =
        (sheaf.model source).code.encode (datum.data source).source :=
      (datum.data source).encoded.symm
    _ = (sheaf.model target).code.encode
          (sheaf.restrict arrow (datum.data source).source) := hencode.symm
    _ = (sheaf.model target).code.encode (datum.data target).source := by
      rw [datum.source_compatible arrow]
    _ = (datum.data target).symbols := (datum.data target).encoded

/-- The transported source remains in the same sector before identifying it with the target
source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/Sheaf/SymmetryResolvedQuadraticDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Spectral/Sheaf/SymmetryResolvedQuadraticDescent.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5597c1b2c1a6f4893e8fa568b2e3f8ff3992a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
