# deriv_deriv_phiC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9f0745b73ec50906dafebaea1a31c78b55b8066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adef5c31-6d6e-6870-52f6-bff5505de37e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5e6688f-b12a-96a0-5bb0-a9fbc1d8d781",
  "kind": "theorem",
  "lexical_name": "deriv_deriv_phiC",
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
  "slug": "deriv-deriv-phic--41ba05b5cc822922e020f980",
  "source": {
    "blob": "c9f0745b73ec50906dafebaea1a31c78b55b8066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41ba05b5cc822922e020f9803b97e391e241628243bc1b601f9ffa64faf09ffb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5e6688f-b12a-96a0-5bb0-a9fbc1d8d781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_deriv_phiC (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    deriv (deriv (fun u => (phi ϱ L w u : ℂ)))
      = fun u => ((deriv (deriv (phi ϱ L w)) u : ℝ) : ℂ) := by
  have h3 := phi_contDiff hϱ hw hwL
  have hd1 : Differentiable ℝ (phi ϱ L w) := h3.differentiable (by norm_num)
  have hd2 : Differentiable ℝ (deriv (phi ϱ L w)) :=
    (h3.deriv' (n := 2)).differentiable (by norm_num)
  rw [deriv_ofReal_comp hd1, deriv_ofReal_comp hd2]

/-- [eq:hfbound] for φ: `‖φ̂(z)‖ · ‖z‖² ≤ e^{|Im z|·L/2} · C₁` for all complex `z`,
`C₁ = ‖φ''‖₁`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Strip/Variant03bd8e55856a7a5e58a02ecf477db74d231e599e46858bc9cf8397462de2d04c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f0745b73ec50906dafebaea1a31c78b55b8066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
