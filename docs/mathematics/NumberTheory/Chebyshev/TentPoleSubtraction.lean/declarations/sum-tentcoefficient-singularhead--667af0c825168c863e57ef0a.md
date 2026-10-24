# sum_tentCoefficient_singularHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a143634b-dbe5-96fb-abfe-0154d2526862",
  "kind": "theorem",
  "lexical_name": "sum_tentCoefficient_singularHead",
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
  "slug": "sum-tentcoefficient-singularhead--667af0c825168c863e57ef0a",
  "source": {
    "blob": "e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:667af0c825168c863e57ef0ada3efc941d1a37b423b2a090dff28f9a82e517ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a143634b-dbe5-96fb-abfe-0154d2526862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_tentCoefficient_singularHead (x h : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (N : ℕ) :
    (∑ p ∈ singularHead N, tentCoefficient x h p) =
      (h : ℂ) - (∑ z ∈ heightHead (contourHeight N),
        (multiplicity z : ℂ) * tentKernel x h z.1) + (correctionPrefix N x h : ℂ) := by
  classical
  let A := (heightHead (contourHeight N)).image (fun z : ZeroPoint => z.1)
  let B := (Finset.range N).image trivialPoint
  have hone : (1 : ℂ) ∉ A ∪ B := by
    intro hm
    rcases Finset.mem_union.mp hm with hm | hm
    · obtain ⟨z, _, hz⟩ := Finset.mem_image.mp hm
      exact z.2.2.2 hz
    · obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hm
      exact riemannZeta_one_ne_zero (hk ▸ zeta_trivialPoint k)
  have hd : Disjoint A B := by
    apply Finset.disjoint_left.mpr
    intro p hpA hpB
    obtain ⟨z, _, rfl⟩ := Finset.mem_image.mp hpA
    obtain ⟨k, _, hk⟩ := Finset.mem_image.mp hpB
    apply trivialPoint_not_nontrivial k
    rw [hk]
    exact z.2
  have hA : (∑ p ∈ A, tentCoefficient x h p) =
      -(∑ z ∈ heightHead (contourHeight N), (multiplicity z : ℂ) * tentKernel x h z.1) := by
    dsimp only [A]
    rw [Finset.sum_image (fun a _ b _ he => Subtype.val_injective he)]
    simp only [tentCoefficient_nontrivial, neg_mul, Finset.sum_neg_distrib]
  have hB : (∑ p ∈ B, tentCoefficient x h p) = (correctionPrefix N x h : ℂ) := by
    dsimp only [B]
    rw [Finset.sum_image (fun a _ b _ he => trivialPoint_injective he)]
    simp only [tentCoefficient_trivial]
    exact finite_trivial_coefficients N x h hh ha
  change (∑ p ∈ insert 1 (A ∪ B), tentCoefficient x h p) = _
  rw [Finset.sum_insert hone, Finset.sum_union hd, hA, hB, tentCoefficient_one x h hh ha]
  ring

/-- Principal parts at every actual singular point, with analytic regular terms.
A scaled-limit assertion alone is not used as an analytic-extension oracle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
