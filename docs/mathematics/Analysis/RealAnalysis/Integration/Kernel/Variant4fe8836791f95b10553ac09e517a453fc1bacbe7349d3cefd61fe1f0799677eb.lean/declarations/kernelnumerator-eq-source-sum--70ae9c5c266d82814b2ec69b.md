# kernelNumerator_eq_source_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:699c8b1d-ed2d-a47d-32f0-961ba7282fc6",
  "kind": "lemma",
  "lexical_name": "kernelNumerator_eq_source_sum",
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
  "slug": "kernelnumerator-eq-source-sum--70ae9c5c266d82814b2ec69b",
  "source": {
    "blob": "33ec055aa2c759d65f9d2644d6015390827eec4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70ae9c5c266d82814b2ec69b90347036e71f9acb3ae96aebf3a004f6a316869b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:699c8b1d-ed2d-a47d-32f0-961ba7282fc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kernelNumerator_eq_source_sum
    (k : ℕ) (w : ℂ) :
    kernelNumerator k w =
      ∑ j ∈ Finset.range (k + 1),
        (k.factorial : ℂ) / (k - j).factorial * w ^ (k - j) := by
  rw [kernelNumerator_eq_sum]
  simpa using
    (Finset.sum_range_reflect
      (fun j ↦ (k.factorial : ℂ) / j.factorial * w ^ j)
      (k + 1)).symm

/-- The recursive kernel is exactly the source syntax frozen in `Algebra.J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant4fe8836791f95b10553ac09e517a453fc1bacbe7349d3cefd61fe1f0799677eb.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ec055aa2c759d65f9d2644d6015390827eec4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
