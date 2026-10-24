# invisible_entire_addition_control

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4176f41d-c29a-60f5-37ed-417fffefe1ab",
  "kind": "theorem",
  "lexical_name": "invisible_entire_addition_control",
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
  "slug": "invisible-entire-addition-control--e96496da7374f7e58160e3f3",
  "source": {
    "blob": "9ae85e23a32fe052a1ce9492a1ed7cb4c8f1311a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 80,
    "path": "GRWTSK/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e96496da7374f7e58160e3f3737f2008386b3de9fa31271c505780bde22922b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4176f41d-c29a-60f5-37ed-417fffefe1ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invisible_entire_addition_control (a c : ℂ) :
    Tendsto (fun s => (s - a) * ((s - a)⁻¹ + c)) (𝓝[≠] a) (𝓝 1) := by
  have hlim : Tendsto (fun s => 1 + (s - a) * c) (𝓝[≠] a) (𝓝 1) := by
    simpa using ((continuousAt_const.add
      ((continuousAt_id.sub continuousAt_const).mul continuousAt_const) :
        ContinuousAt (fun s : ℂ => 1 + (s - a) * c) a).tendsto.mono_left
          nhdsWithin_le_nhds)
  apply hlim.congr'
  filter_upwards [self_mem_nhdsWithin] with s hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  simp [mul_add, hs0]

/-- Identical residue data do not make the analytic correction zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/Checks/LogarithmicResidueControls.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae85e23a32fe052a1ce9492a1ed7cb4c8f1311a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
