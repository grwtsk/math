# mem_coordinateDomain_iff_weighted_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c589bad8a351a8af9c3716ffaf51e14b1fad40c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce7e540f-8b51-fecd-f192-f3ad58dc1ac5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc811777-dd15-9a68-2a54-f8ea6e0ab908",
  "kind": "theorem",
  "lexical_name": "mem_coordinateDomain_iff_weighted_integrable",
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
  "slug": "mem-coordinatedomain-iff-weighted-integrable--dc20b26882904fe861826d4c",
  "source": {
    "blob": "c589bad8a351a8af9c3716ffaf51e14b1fad40c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc20b26882904fe861826d4c26c3120fecdfe833f0893a6cc8c5a4739be214ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc811777-dd15-9a68-2a54-f8ea6e0ab908`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_coordinateDomain_iff_weighted_integrable (f : Lp ℂ 2 μ) :
    f ∈ coordinateDomain μ ↔
      Integrable (fun x => (1 + x ^ 2) * ‖f x‖ ^ 2) μ := by
  have ha : AEStronglyMeasurable (fun x : ℝ => (x : ℂ) * f x) μ :=
    Complex.continuous_ofReal.aestronglyMeasurable.mul (Lp.aestronglyMeasurable f)
  have hi := (memLp_two_iff_integrable_sq_norm (Lp.aestronglyMeasurable f)).mp (Lp.memLp f)
  have he (x : ℝ) : ‖(x : ℂ) * f x‖ ^ 2 = x ^ 2 * ‖f x‖ ^ 2 := by
    simp [mul_pow]
  constructor
  · intro hf
    have hm := (memLp_two_iff_integrable_sq_norm ha).mp hf
    apply (hi.add hm).congr
    exact Filter.Eventually.of_forall fun x => by simp only [Pi.add_apply, he]; ring
  · intro hf
    apply (memLp_two_iff_integrable_sq_norm ha).mpr
    apply hf.mono' (ha.norm.pow 2)
    exact Filter.Eventually.of_forall fun x => by
      change ‖‖(x : ℂ) * f x‖ ^ 2‖ ≤ (1 + x ^ 2) * ‖f x‖ ^ 2
      rw [he]
      rw [Real.norm_eq_abs, abs_of_nonneg
        (mul_nonneg (sq_nonneg x) (sq_nonneg ‖f x‖))]
      nlinarith [sq_nonneg ‖f x‖]

/-- The measure whose L² norm is the multiplication graph norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7f0e76fcf7fd708eba9984e454a7617bc14951043f27e12d23e84655dc3035ee.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c589bad8a351a8af9c3716ffaf51e14b1fad40c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
