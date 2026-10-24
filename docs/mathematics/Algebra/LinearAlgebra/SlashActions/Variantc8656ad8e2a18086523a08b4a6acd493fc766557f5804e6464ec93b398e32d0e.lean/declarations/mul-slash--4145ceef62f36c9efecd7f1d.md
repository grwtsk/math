# mul_slash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0367fab1220c515ade50ab2e5ed6d6960ee78fb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fd1c583-0e0d-1996-bd97-d153e7f05e83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:840e9686-0657-eeb1-d775-e45ca13d5426",
  "kind": "theorem",
  "lexical_name": "mul_slash",
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
  "slug": "mul-slash--4145ceef62f36c9efecd7f1d",
  "source": {
    "blob": "0367fab1220c515ade50ab2e5ed6d6960ee78fb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 172,
    "path": "GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4145ceef62f36c9efecd7f1d331ae8ac03bb53678e8b3588433048dab2fd2075",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:840e9686-0657-eeb1-d775-e45ca13d5426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_slash (k1 k2 : ℤ) (A : GL (Fin 2) ℝ) (f g : ℍ → ℂ) :
    (f * g) ∣[k1 + k2] A = (A.det : ℝ) • (f ∣[k1] A * g ∣[k2] A) := by
  ext1 x
  simp only [slash_apply, Pi.mul_apply, Pi.smul_apply, real_smul, map_mul, neg_add,
    zpow_add₀ (denom_ne_zero _ x)]
  set d := (A.det.val : ℂ)
  have h1 : d ^ (k1 + k2 - 1) = d * d ^ (k1 - 1) * d ^ (k2 - 1) := by
    have : d ≠ 0 := ofReal_ne_zero.mpr (Units.ne_zero _)
    rw [← zpow_one_add₀ this, ← zpow_add₀ this]
    ring_nf
  rw [h1]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SlashActions/Variantc8656ad8e2a18086523a08b4a6acd493fc766557f5804e6464ec93b398e32d0e.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0367fab1220c515ade50ab2e5ed6d6960ee78fb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
