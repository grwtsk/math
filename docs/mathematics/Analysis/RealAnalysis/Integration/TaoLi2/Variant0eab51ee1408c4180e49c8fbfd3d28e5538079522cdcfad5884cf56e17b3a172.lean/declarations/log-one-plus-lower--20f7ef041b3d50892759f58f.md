# log_one_plus_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e435dcf-a47e-52f1-a3bd-77e40b825254",
  "kind": "theorem",
  "lexical_name": "log_one_plus_lower",
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
  "slug": "log-one-plus-lower--20f7ef041b3d50892759f58f",
  "source": {
    "blob": "ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f7ef041b3d50892759f58f4d92b76706e68221efd82619af0d3ae9716567a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e435dcf-a47e-52f1-a3bd-77e40b825254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_one_plus_lower :
    ∀ t ∈ Set.Icc (0:ℝ) 1, t / (1 + t) ≤ Real.log (1 + t) := by
  intro t ⟨ht_nonneg, _⟩
  have h1pt_pos : 0 < 1 + t := by linarith
  have h := Real.one_sub_inv_le_log_of_pos h1pt_pos
  simp only [inv_eq_one_div] at h
  have heq : 1 - 1 / (1 + t) = t / (1 + t) := by field_simp; ring
  rw [← heq]; exact h

/-! ## Part B: The key cancellation bound

The magic: 1/log(1+t) + 1/log(1-t) is bounded near t=0!

For small t: 1/log(1+t) ≈ 1/t, 1/log(1-t) ≈ -1/t
They cancel! The bound is |sum| ≤ 1/(2(1-t/2)²)
-/

-- At t = 0.5: 1/(2(1-0.25)²) = 1/(2×0.5625) = 0.889
-- Let's verify the sum is bounded

-- First check: log(1.5) and log(0.5)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant0eab51ee1408c4180e49c8fbfd3d28e5538079522cdcfad5884cf56e17b3a172.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee0a3235dff71c7a8c2d22b9cbfc63502feb29bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
