# factorialMellinWeight_upper_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24ca25ca-e687-7abe-0c93-8965138a387c",
  "kind": "theorem",
  "lexical_name": "factorialMellinWeight_upper_integrable",
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
  "slug": "factorialmellinweight-upper-integrable--24a141f8660084062d899cd5",
  "source": {
    "blob": "27931456e3be25930d1c7c81e650e20b5db8e720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24a141f8660084062d899cd56a508d90f05848edf53b705233da24348e24deaf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24ca25ca-e687-7abe-0c93-8965138a387c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialMellinWeight_upper_integrable :
    IntegrableOn factorialMellinWeight (Ioi (1 : ℝ)) := by
  have hi : IntegrableOn (coefficientWeight 1) (Ioi (1 : ℝ)) :=
    (coefficientWeight_integrable 1).mono_set (by
      intro y hy
      exact zero_lt_one.trans (mem_Ioi.mp hy))
  apply (((upperLogWeight_integrable 0).sub hi).add
    fractionalPrimitive_mellin_integrable).congr_fun
  · intro y hy
    exact (factorialMellinWeight_eq_upper hy.le).symm
  · exact measurableSet_Ioi

/-- Both-end L1 of the actual factorial defect is proved before the signed split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3e05c1c9b2504f86c72aSourceFactorialMellinCancellation/Variant307e401273231bb356c0178920a14e0ca4a937092789f691c9556f49f40a8f01.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27931456e3be25930d1c7c81e650e20b5db8e720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
