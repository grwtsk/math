# coord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c7ceb49a64bc844783fe73e55be808431ab80c6ec1901c861cd3180a744e31d",
  "kind": "def",
  "lexical_name": "coord",
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
  "slug": "coord--0622df9ff35c59bf2a0d4a99",
  "source": {
    "blob": "c29d2c509245e7ef991fce26dfee4e83c5ed7d64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0622df9ff35c59bf2a0d4a99e5d4b3abfe81ad28b68b1ad117c5da073195c135",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c7ceb49a64bc844783fe73e55be808431ab80c6ec1901c861cd3180a744e31d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coord (i : Fin 3) : Space →L[ℝ] ℝ := PiLp.proj 2 (fun _ : Fin 3 => ℝ) i

/-- Orthogonal projection onto the first two coordinate axes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afb.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c29d2c509245e7ef991fce26dfee4e83c5ed7d64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
