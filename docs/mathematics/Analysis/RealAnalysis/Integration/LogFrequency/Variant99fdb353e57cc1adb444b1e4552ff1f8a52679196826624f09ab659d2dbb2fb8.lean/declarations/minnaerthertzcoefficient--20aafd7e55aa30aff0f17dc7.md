# minnaertHertzCoefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c86830607dbf390a2ca49a057e3011fd4b5ce2dc16e13c500c10c6ed402f134b",
  "kind": "def",
  "lexical_name": "minnaertHertzCoefficient",
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
  "slug": "minnaerthertzcoefficient--20aafd7e55aa30aff0f17dc7",
  "source": {
    "blob": "20be53100f54bd8393ee62620d428f458a5e1bdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20aafd7e55aa30aff0f17dc751141892544bceea6b3f45ee4f99531fad397590",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c86830607dbf390a2ca49a057e3011fd4b5ce2dc16e13c500c10c6ed402f134b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def minnaertHertzCoefficient (parameters : Parameters) : ℝ :=
  Real.sqrt (gasCoefficient parameters / parameters.density) / (2 * Real.pi)

/-- The accepted zero-tension angular frequency converted to hertz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variant99fdb353e57cc1adb444b1e4552ff1f8a52679196826624f09ab659d2dbb2fb8.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20be53100f54bd8393ee62620d428f458a5e1bdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
