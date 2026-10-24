# hasSum_phiHatR_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cafde35-63ff-6941-e43c-d81358858bb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9d930f1-cb66-ac75-08ae-00a22189658b",
  "kind": "theorem",
  "lexical_name": "hasSum_phiHatR_mul",
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
  "slug": "hassum-phihatr-mul--36242a271507900f80ae71d3",
  "source": {
    "blob": "78a61f9d425c3c55b23c4ddb612b986f0bcb34f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 347,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36242a271507900f80ae71d3227d99d29802007712374a5ec7904e78ee987eee",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9d930f1-cb66-ac75-08ae-00a22189658b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_phiHatR_mul (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) (T τ τ' : ℝ) :
    HasSum (fun k : ℤ => phiHatR ϱ L w (τ - (T + k * (2 * π / L)))
                          * phiHatR ϱ L w (τ' - (T + k * (2 * π / L))))
      (L * PhiR ϱ L w (τ - τ')) := by
  have hL : 0 < L := by linarith
  have h := Poisson.hasSum_paperFT_mul_paperFT hL (phi_continuous hϱ hw hwL)
    (fun u hu => phi_eq_zero hϱ hw hu) (fun u => phi_even u) (phiHat_decay hϱ hw hwL) T τ τ'
  -- transport along re : ℂ → ℝ
  have h2 := (Complex.reCLM.hasSum h)
  convert h2 using 1
  · funext k
    simp only [Complex.reCLM_apply]
    rw [show paperFT (fun u => (phi ϱ L w u : ℂ)) = phiHat ϱ L w from rfl,
      phiHat_ofReal, phiHat_ofReal]
    norm_cast
  · simp only [Complex.reCLM_apply]
    rw [show paperFT (fun u => (((phi ϱ L w u) ^ 2 : ℝ) : ℂ)) = Phi ϱ L w from rfl, Phi_ofReal]
    norm_cast

/-- [lem:poisson], "in particular": `Σ_{k∈ℤ} φ̂(γ−τ_k)² = a L²` for every real `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Poisson/Variant0b73daec743724f14be6db73bbff74e0ba206869f9d76805a8c2f3456b849194.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a61f9d425c3c55b23c4ddb612b986f0bcb34f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
