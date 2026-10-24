# clipped_zero_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f02bacf-26b7-3eba-6f1a-2223c9cb41f1",
  "kind": "theorem",
  "lexical_name": "clipped_zero_hasDerivAt",
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
  "slug": "clipped-zero-hasderivat--4d40bcf2b5c86d534bcbaa6f",
  "source": {
    "blob": "1fb6bc049950750a9955cbaedc3bd8e13d748cc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d40bcf2b5c86d534bcbaa6f30ef6483931c8997018c831d7eec203df9999d48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f02bacf-26b7-3eba-6f1a-2223c9cb41f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem clipped_zero_hasDerivAt {f : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f 0 x) (zero : f x = 0) :
    HasDerivAt (clippedProfile f) 0 x := by
  have inside : HasDerivWithinAt (clippedProfile f) 0 (Icc (-1 : ℝ) 1) x :=
    hf.hasDerivWithinAt.congr (fun y hy ↦ by simp [clippedProfile, hy])
      (by by_cases hx : x ∈ Icc (-1 : ℝ) 1 <;> simp [clippedProfile, hx, zero])
  have outside : HasDerivWithinAt (clippedProfile f) 0 (Icc (-1 : ℝ) 1)ᶜ x :=
    (hasDerivAt_const x (0 : ℝ)).hasDerivWithinAt.congr
      (fun y hy ↦ by simp only [clippedProfile, if_neg hy])
      (by by_cases hx : x ∈ Icc (-1 : ℝ) 1 <;> simp [clippedProfile, hx, zero])
  simpa only [union_compl_self, hasDerivWithinAt_univ] using inside.union outside

/-- Global differentiation includes both closed endpoints and the open exterior. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactPolynomialDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactPolynomialDerivatives.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb6bc049950750a9955cbaedc3bd8e13d748cc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
