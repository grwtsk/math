# differentiableAt_jacobiTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74a5b0e3-b7aa-21f4-96ad-bd08edd646bf",
  "kind": "theorem",
  "lexical_name": "differentiableAt_jacobiTheta",
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
  "slug": "differentiableat-jacobitheta--be90497c666cdbe8448dd775",
  "source": {
    "blob": "6fde4002d242155609497fc30e009e920b66a329",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 184,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be90497c666cdbe8448dd7750eafcfed196c4726bc9bf9a234d60dcd48665fd5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74a5b0e3-b7aa-21f4-96ad-bd08edd646bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_jacobiTheta {z : ℂ} (hz : 0 < im z) :
    DifferentiableAt ℂ jacobiTheta z := by
  suffices ∀ (y : ℝ) (_ : 0 < y),
      DifferentiableOn ℂ (fun z => ∑' n : ℤ, cexp (π * I * (n : ℂ) ^ 2 * z)) {w : ℂ | y < im w} by
    let ⟨y, hy, hy'⟩ := exists_between hz
    exact (this y hy).differentiableAt
      ((Complex.continuous_im.isOpen_preimage _ isOpen_Ioi).mem_nhds hy')
  intro y hy
  have h1 : ∀ (n : ℤ) (w : ℂ) (_ : y < im w),
      DifferentiableWithinAt ℂ (fun v : ℂ => cexp (π * I * (n : ℂ) ^ 2 * v)) {z : ℂ | y < im z} w :=
    fun n w _ => (differentiableAt_id.const_mul _).cexp.differentiableWithinAt
  have h2 : IsOpen {w : ℂ | y < im w} := continuous_im.isOpen_preimage _ isOpen_Ioi
  obtain ⟨bd, bd_s, le_bd⟩ := exists_summable_bound_exp_mul_sq hy
  exact differentiableOn_tsum_of_summable_norm bd_s h1 h2 fun i w hw => le_bd (le_of_lt hw) i
#align differentiable_at_jacobi_theta differentiableAt_jacobiTheta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant0a4fb00dd28881bf4019328e88b3e33d5baa1d1c4d9c949e7a5735e6a18bf978.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fde4002d242155609497fc30e009e920b66a329` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
