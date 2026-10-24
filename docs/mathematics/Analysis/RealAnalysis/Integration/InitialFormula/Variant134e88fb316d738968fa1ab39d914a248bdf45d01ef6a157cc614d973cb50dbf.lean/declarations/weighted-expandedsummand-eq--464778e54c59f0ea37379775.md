# weighted_expandedSummand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5821d1847af5320967e6e7ac504340255923935",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1009efb2-4d0d-5f16-43ed-c810b6ff559e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e304fe0a-5a36-4c4f-d68e-afbaa4fc4fef",
  "kind": "theorem",
  "lexical_name": "weighted_expandedSummand_eq",
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
  "slug": "weighted-expandedsummand-eq--464778e54c59f0ea37379775",
  "source": {
    "blob": "d5821d1847af5320967e6e7ac504340255923935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:464778e54c59f0ea37379775a70ca6b77a13fd134b08a5d76cd9a13bc7619400",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e304fe0a-5a36-4c4f-d68e-afbaa4fc4fef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_expandedSummand_eq
    (z s : ℂ) (A : ℝ) :
    Complex.exp (-s * A) * expandedSummand A z =
      modeCoefficient z *
        (weightedPolynomial (positivePolynomial z) (s - 2 * z) A +
          weightedPolynomial (positivePolynomial (-z)) (s + 2 * z) A -
          2 * weightedPolynomial (mixedPolynomial z) s A) := by
  have hpos :
      Complex.exp (-(s - 2 * z) * (A : ℂ)) =
        Complex.exp (-s * A) *
          Complex.exp (2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  have hneg :
      Complex.exp (-(s + 2 * z) * (A : ℂ)) =
        Complex.exp (-s * A) *
          Complex.exp (-2 * (A : ℂ) * z) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  unfold expandedSummand weightedPolynomial
  rw [positivePolynomial_eval,
    positivePolynomial_eval, mixedPolynomial_eval,
    hpos, hneg]
  ring

/-- The critical strip and `Re s > 1` imply all three finite convergence
guards for a genuine occurrence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5821d1847af5320967e6e7ac504340255923935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
