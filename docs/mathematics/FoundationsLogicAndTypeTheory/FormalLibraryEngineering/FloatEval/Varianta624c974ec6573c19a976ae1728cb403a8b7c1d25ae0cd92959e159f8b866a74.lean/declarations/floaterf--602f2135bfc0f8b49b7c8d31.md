# floatErf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31cebdd46523be873531c2b55e479da3e2f8f64b97c947a34ac7b14161dd92fd",
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
  "slug": "floaterf--602f2135bfc0f8b49b7c8d31",
  "source": {
    "blob": "c4b5f860c8fc939ac454b43e813e8dee7890268a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:602f2135bfc0f8b49b7c8d31ab90bb77637f0b32012db7b614e9faa5e22902f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31cebdd46523be873531c2b55e479da3e2f8f64b97c947a34ac7b14161dd92fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–59.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatEval/Varianta624c974ec6573c19a976ae1728cb403a8b7c1d25ae0cd92959e159f8b866a74.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b5f860c8fc939ac454b43e813e8dee7890268a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
