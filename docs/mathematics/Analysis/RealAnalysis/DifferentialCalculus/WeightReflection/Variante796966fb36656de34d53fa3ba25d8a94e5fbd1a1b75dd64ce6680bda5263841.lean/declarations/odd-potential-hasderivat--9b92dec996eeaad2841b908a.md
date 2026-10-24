# odd_potential_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37cd0ef4-468d-45c9-91dc-51fc4c8f5f87",
  "kind": "theorem",
  "lexical_name": "odd_potential_hasDerivAt",
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
  "slug": "odd-potential-hasderivat--9b92dec996eeaad2841b908a",
  "source": {
    "blob": "8fb39bca757b53ff335e381bfc6a56a031db01ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b92dec996eeaad2841b908a9759a6449144eb572b8e630d78c7955e3df2479a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37cd0ef4-468d-45c9-91dc-51fc4c8f5f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_potential_hasDerivAt (r : DilationRealization) (A : Set.Ici (1 : ℝ)) (t : ℝ) :
    HasDerivAt (oddPart lowerEndpoint (2 * A) (potential r A)) (evenWeight r A t) t := by
  have hcomp := (potential_hasDerivAt r A (sourceReflection A t)).comp t
    (reflection_hasDerivAt A t)
  convert! ((potential_hasDerivAt r A t).sub hcomp).div_const 2 using 1
  simp only [evenWeight, evenPart, sourceReflection]
  ring

/-- The even potential differentiates to the odd weight; neither sector is discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb39bca757b53ff335e381bfc6a56a031db01ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
