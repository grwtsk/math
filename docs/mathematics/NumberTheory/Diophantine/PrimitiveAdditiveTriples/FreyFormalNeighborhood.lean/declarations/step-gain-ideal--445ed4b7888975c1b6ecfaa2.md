# step_gain_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e12586ed-62a5-74c5-2153-e5ca5423ab00",
  "kind": "theorem",
  "lexical_name": "step_gain_ideal",
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
  "slug": "step-gain-ideal--445ed4b7888975c1b6ecfaa2",
  "source": {
    "blob": "f304f59fc241efc740cf0c1dbeef9881538c2bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:445ed4b7888975c1b6ecfaa2ca55fa8c9753e069ef9a6c463769b4d38de95758",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e12586ed-62a5-74c5-2153-e5ca5423ab00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem step_gain_ideal (I : Ideal A) (j h e z w : A) (n : ℕ)
    (hz : z ∈ I) (hw : w ∈ I) (hzw : z - w ∈ I ^ n) :
    step j h e z - step j h e w ∈ I ^ (n + 1) := by
  have hz2 : z ^ 2 ∈ I := by simpa only [pow_two] using I.mul_mem_left z hz
  have hw2 : w ^ 2 ∈ I := by simpa only [pow_two] using I.mul_mem_left w hw
  have hfactor : -j * (h * (z + w) + z ^ 2 + z * w + w ^ 2) ∈ I :=
    I.mul_mem_left (-j)
      (I.add_mem (I.add_mem (I.add_mem (I.mul_mem_left h (I.add_mem hz hw)) hz2)
        (I.mul_mem_left z hw)) hw2)
  have heq : step j h e z - step j h e w =
      (z - w) * (-j * (h * (z + w) + z ^ 2 + z * w + w ^ 2)) := by
    unfold step
    ring
  rw [heq, pow_succ I n]
  exact Ideal.mul_mem_mul hzw hfactor

/-- Uniqueness at the selected branch in ANY nilpotent ideal. No cancellation
by e, no e-divisibility premise on z, and no field assumption are used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f304f59fc241efc740cf0c1dbeef9881538c2bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
