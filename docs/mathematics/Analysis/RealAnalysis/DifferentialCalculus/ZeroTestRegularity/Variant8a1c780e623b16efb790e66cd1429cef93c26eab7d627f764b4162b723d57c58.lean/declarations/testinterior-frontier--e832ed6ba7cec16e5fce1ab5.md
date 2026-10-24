# testInterior_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b67b208-5d9b-cc54-4523-136c13cb6767",
  "kind": "theorem",
  "lexical_name": "testInterior_frontier",
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
  "slug": "testinterior-frontier--e832ed6ba7cec16e5fce1ab5",
  "source": {
    "blob": "1d0e3168293b21b8c4b65add9302bd486f959a4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e832ed6ba7cec16e5fce1ab5d52f40e943f725e63dc28b5ef6288330ef3eb68f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b67b208-5d9b-cc54-4523-136c13cb6767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testInterior_frontier (A : ℝ) (hA : 1 ≤ A)
    (x : ℝ) (hx : x ∈ frontier (Icc (-A) A)) :
    testInterior A x = 0 ∧ testInteriorDerivative A x = 0 := by
  have hne : A ≠ 0 := by linarith
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [testInterior, testInteriorDerivative,
      (bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2,
      (firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2,
      (secondInterior_endpoints A hne).1, (secondInterior_endpoints A hne).2,
      (thirdInterior_endpoints A hne).1, (thirdInterior_endpoints A hne).2]

/-- Global C¹ regularity of the actual unnormalized test includes both seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZeroTestRegularity/Variant8a1c780e623b16efb790e66cd1429cef93c26eab7d627f764b4162b723d57c58.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d0e3168293b21b8c4b65add9302bd486f959a4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
