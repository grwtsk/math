# full_boundary_pairing_eq_lower_add_scaled_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27a76033-c59b-49e8-d410-4d212d13f8e8",
  "kind": "theorem",
  "lexical_name": "full_boundary_pairing_eq_lower_add_scaled_higher",
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
  "slug": "full-boundary-pairing-eq-lower-add-scaled-higher--51df11242cc9d4bece771341",
  "source": {
    "blob": "59ec5915b8dfee9c21e64d40e8e2eff231e0241c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 332,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51df11242cc9d4bece77134152142b8d4fabf84067e7081b18817f4de991758b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27a76033-c59b-49e8-d410-4d212d13f8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_boundary_pairing_eq_lower_add_scaled_higher (A : ℝ) (hA : 1 ≤ A) :
    fullBoundaryPairing A = lowerBoundaryPairing A +
      A ^ 9 * Real.exp (-A) * higherPowerContribution A := by
  have hA0 : A ≠ 0 := by linarith
  have hscale : (A ^ 9 * Real.exp (-A)) * (Real.exp A / A ^ 9) = 1 := by
    rw [Real.exp_neg]
    field_simp
  calc
    _ = lowerBoundaryPairing A + (fullBoundaryPairing A - lowerBoundaryPairing A) := by ring
    _ = lowerBoundaryPairing A + (A ^ 9 * Real.exp (-A)) *
        ((Real.exp A / A ^ 9) * (fullBoundaryPairing A - lowerBoundaryPairing A)) := by
      rw [← mul_assoc, hscale, one_mul]
    _ = _ := by rw [full_boundary_pairing_scaled_difference A hA]

/-- The normalized correction has the exact vanishing prefactor, with its native bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBoundaryArithmetic/Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ec5915b8dfee9c21e64d40e8e2eff231e0241c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
