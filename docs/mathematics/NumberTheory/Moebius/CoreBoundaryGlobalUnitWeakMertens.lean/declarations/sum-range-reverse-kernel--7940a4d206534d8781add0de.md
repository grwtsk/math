# sum_range_reverse_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0343b731-a3b5-a6b3-79e4-907fa3d90f80",
  "kind": "theorem",
  "lexical_name": "sum_range_reverse_kernel",
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
  "slug": "sum-range-reverse-kernel--7940a4d206534d8781add0de",
  "source": {
    "blob": "66df4148a06701caba735db1f0694ec54730a319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7940a4d206534d8781add0de914650a42938e618263b0ec2d823fd52c89a3969",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0343b731-a3b5-a6b3-79e4-907fa3d90f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_range_reverse_kernel
    (D : ℕ) :
    (∑ u ∈ Finset.range (D + 1),
      weakMertensUnitKernel (D - u)) =
      ∑ N ∈ Finset.range (D + 1),
        weakMertensUnitKernel N := by
  classical
  apply Finset.sum_bij (fun u _hu => D - u)
  · intro u hu
    simp only [Finset.mem_range] at hu ⊢
    omega
  · intro u₁ hu₁ u₂ hu₂ h
    simp only [Finset.mem_range] at hu₁ hu₂
    omega
  · intro N hN
    simp only [Finset.mem_range] at hN
    refine ⟨D - N, ?_, ?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro u hu
    rfl

/-- The first moving prefix family is exactly the upper dyadic half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66df4148a06701caba735db1f0694ec54730a319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
