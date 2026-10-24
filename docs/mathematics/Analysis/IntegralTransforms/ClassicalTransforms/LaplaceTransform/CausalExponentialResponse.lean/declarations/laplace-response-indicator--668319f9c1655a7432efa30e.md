# laplace_response_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9340822-f7b5-b42e-6028-6fcc7bab443e",
  "kind": "theorem",
  "lexical_name": "laplace_response_indicator",
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
  "slug": "laplace-response-indicator--668319f9c1655a7432efa30e",
  "source": {
    "blob": "f7b5727f170b4abc83449832084a8ceeb23f36e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668319f9c1655a7432efa30e9c214e7953fea9673ebcd1ddf642ccd84378bd41",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9340822-f7b5-b42e-6028-6fcc7bab443e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplace_response_indicator {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    laplaceResponse n z =
      (Ioi (Real.log (n : ℝ))).indicator (ungatedLaplaceResponse n z) := by
  funext t
  unfold laplaceResponse
  rcases lt_trichotomy t (Real.log (n : ℝ)) with before | touching | after
  · rw [response_of_not_arrived (not_le.mpr before)]
    simp [Set.indicator, Set.mem_Ioi, not_lt.mpr before.le]
  · subst t
    rw [response_touching_atom_zero hn]
    simp
  · rw [response_of_arrived after.le]
    simp only [Set.indicator, Set.mem_Ioi, if_pos after]
    exact weighted_kernel_identity n z t

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/CausalExponentialResponse.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7b5727f170b4abc83449832084a8ceeb23f36e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
