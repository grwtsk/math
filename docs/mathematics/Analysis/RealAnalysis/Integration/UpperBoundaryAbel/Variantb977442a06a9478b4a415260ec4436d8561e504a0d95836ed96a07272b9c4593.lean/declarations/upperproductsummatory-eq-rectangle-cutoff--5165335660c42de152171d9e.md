# upperProductSummatory_eq_rectangle_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae2710ea67deeec2207f13af925c677e92c3db40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7fb7475-a4ba-95f0-334a-dbfbe450b15d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eaf30aa5-fcbf-bbf9-21c0-af961a5c7541",
  "kind": "theorem",
  "lexical_name": "upperProductSummatory_eq_rectangle_cutoff",
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
  "slug": "upperproductsummatory-eq-rectangle-cutoff--5165335660c42de152171d9e",
  "source": {
    "blob": "ae2710ea67deeec2207f13af925c677e92c3db40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5165335660c42de152171d9e0d385f95180811b65f959863f5692717593e044b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf30aa5-fcbf-bbf9-21c0-af961a5c7541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperProductSummatory_eq_rectangle_cutoff (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    upperProductSummatory N x =
      ∑ i ∈ Ioc (N / 2) N, ∑ j ∈ Ioc (N / 2) N,
        if ((i * j : ℕ) : ℝ) ≤ x then
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) else 0 := by
  unfold upperProductSummatory upperProductCoefficient
  rw [sum_comm]
  apply sum_congr rfl
  intro i hi
  rw [sum_comm]
  apply sum_congr rfl
  intro j hj
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hj1 : 1 ≤ j := by have := (mem_Ioc.mp hj).1; omega
  have hp : 1 ≤ i * j := by nlinarith
  simp [eq_comm, mem_Icc, hp, Nat.le_floor_iff hx]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variantb977442a06a9478b4a415260ec4436d8561e504a0d95836ed96a07272b9c4593.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae2710ea67deeec2207f13af925c677e92c3db40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
