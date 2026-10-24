# DiffContOnCl.circleAverage_smul_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f380de1d-1cb3-3092-636d-dd2aea740d1f",
  "kind": "theorem",
  "lexical_name": "DiffContOnCl.circleAverage_smul_div",
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
  "slug": "diffcontoncl-circleaverage-smul-div--fe51f40076ec6f03ef865325",
  "source": {
    "blob": "b74d693302a54c665280eae82a968b54556d1aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variante826aa83720d25acbcf71421774eca43411048755fbec9a4ea6bb1b15dbb1112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe51f40076ec6f03ef8653253788985928136bfa432a198b933f06da84f7de2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variante826aa83720d25acbcf71421774eca43411048755fbec9a4ea6bb1b15dbb1112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f380de1d-1cb3-3092-636d-dd2aea740d1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DiffContOnCl.circleAverage_smul_div (hf : DiffContOnCl ℂ f (ball c |R|))
    (hw : w ∈ ball c |R|) :
    circleAverage (fun z ↦ ((z - c) / (z - w)) • f z) c R = f w := by
  by_cases hR : |R| ≤ 0
  · simp_all [ball_eq_empty.2 hR]
  apply circleAverage_sub_sub_inv_smul_of_differentiable_on_off_countable countable_empty _ _ hw
  · simpa [← closure_ball _ (ne_of_not_ge hR).symm] using hf.2
  · intro z hz
    rw [sdiff_empty] at hz
    apply (hf.1 z hz).differentiableAt (isOpen_ball.mem_nhds hz)

/-!
## Classic Mean Value Properties

For a complex differentiable function `f`, the theorems in this section compute value of `f` at the
center of a circle as a circle average of the function. This specializes the generalized mean value
properties discussed in the previous section.
-/

/--
The **Mean Value Property** of complex differentiable functions: If `f : ℂ → E` is continuous on a
closed disc of radius `R` and center `c`, and is complex differentiable at all but countably many
points of its interior, then the circle average `circleAverage f c R` equals `f c`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variante826aa83720d25acbcf71421774eca43411048755fbec9a4ea6bb1b15dbb1112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variante826aa83720d25acbcf71421774eca43411048755fbec9a4ea6bb1b15dbb1112.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74d693302a54c665280eae82a968b54556d1aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
