# floatErf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9496cff8d9105379197c18c7cc2700fbbda07ea8ff398010e844a4d1c4030a6b",
  "kind": "def",
  "lexical_name": "floatErf",
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
  "slug": "floaterf--2e9fe29b4e427d813ad327b7",
  "source": {
    "blob": "8f382bb429f6893147bccb9d9d1c3837d8ba4387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e9fe29b4e427d813ad327b70d1fd48ac3d33915454f7f6e98a7880015b24a00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9496cff8d9105379197c18c7cc2700fbbda07ea8ff398010e844a4d1c4030a6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def floatErf (x : Float) : Float :=
  if x.abs ≤ 1.0 then
    -- Taylor series approximation for small x
    let x2 := x * x
    let coeff := 1.0 - x2 * (1.0/3.0 - x2 * (1.0/10.0 - x2 * (1.0/42.0 - x2 * (1.0/216.0))))
    x * coeff * 1.1283791670955126  -- 2/√π
  else
    -- For larger x, use tanh approximation: erf(x) ≈ tanh(1.2x)
    let y := 1.2 * x
    let e2y := Float.exp (2.0 * y)
    (e2y - 1.0) / (e2y + 1.0)

/-- Convert an integer to a Float -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Variant2f9462c0bf0695e7564f64405469b586258da9ff298e2c96b7f6596e5a3f696b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f382bb429f6893147bccb9d9d1c3837d8ba4387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
