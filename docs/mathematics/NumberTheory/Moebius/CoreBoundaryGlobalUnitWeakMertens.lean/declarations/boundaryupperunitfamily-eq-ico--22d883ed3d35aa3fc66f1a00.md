# boundaryUpperUnitFamily_eq_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9e366e4-a93e-d78c-c65d-30d1510e3549",
  "kind": "theorem",
  "lexical_name": "boundaryUpperUnitFamily_eq_Ico",
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
  "slug": "boundaryupperunitfamily-eq-ico--22d883ed3d35aa3fc66f1a00",
  "source": {
    "blob": "66df4148a06701caba735db1f0694ec54730a319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22d883ed3d35aa3fc66f1a00bd4f9c265b40b3470d375e24f173492354798700",
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

Occurrence: `result:c9e366e4-a93e-d78c-c65d-30d1510e3549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryUpperUnitFamily_eq_Ico
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      weakMertensUnitKernel (2 ^ (j + 1) - u - 1)) =
      ∑ N ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        weakMertensUnitKernel N := by
  classical
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hYX : Y = 2 * X := by
    dsimp [X, Y]
    rw [Nat.pow_succ]
    ring
  apply Finset.sum_bij (fun u _hu => Y - u - 1)
  · intro u hu
    simp only [Finset.mem_range] at hu
    simp only [Finset.mem_Ico]
    rw [hYX]
    omega
  · intro u₁ hu₁ u₂ hu₂ h
    simp only [Finset.mem_range] at hu₁ hu₂
    omega
  · intro N hN
    simp only [Finset.mem_Ico] at hN
    refine ⟨Y - N - 1, ?_, ?_⟩
    · simp only [Finset.mem_range]
      rw [hYX] at hN ⊢
      omega
    · omega
  · intro u hu
    rfl

/-- The second moving prefix family is exactly the lower dyadic half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66df4148a06701caba735db1f0694ec54730a319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
