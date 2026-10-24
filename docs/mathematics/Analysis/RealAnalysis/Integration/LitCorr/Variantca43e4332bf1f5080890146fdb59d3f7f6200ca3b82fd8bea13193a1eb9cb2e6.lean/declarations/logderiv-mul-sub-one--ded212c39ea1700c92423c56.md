# logDeriv_mul_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6642936e98187cf5821a3af9634301cceee123fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c70a459-4c53-ec26-0ba3-9f4a2ad9bc12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7c0be95-739d-2a85-fe08-e9057209c850",
  "kind": "theorem",
  "lexical_name": "logDeriv_mul_sub_one",
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
  "slug": "logderiv-mul-sub-one--ded212c39ea1700c92423c56",
  "source": {
    "blob": "6642936e98187cf5821a3af9634301cceee123fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ded212c39ea1700c92423c567ec6396eb2cf0c7d1869fa88adc54fb7976754ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c0be95-739d-2a85-fe08-e9057209c850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_mul_sub_one {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    logDeriv (fun w : ℂ => w * (w - 1)) s = 1 / s + 1 / (s - 1) := by
  have h1' : s - 1 ≠ 0 := sub_ne_zero.mpr h1
  rw [logDeriv_mul (f := fun w : ℂ => w) (g := fun w : ℂ => w - 1) s h0 h1'
    differentiableAt_id (differentiableAt_id.sub_const 1)]
  have e1 : logDeriv (fun w : ℂ => w) s = 1 / s := by
    rw [logDeriv_apply]; simp
  have e2 : logDeriv (fun w : ℂ => w - 1) s = 1 / (s - 1) := by
    rw [logDeriv_apply]
    simp
  rw [e1, e2]

/-- **Γℝ piece** (WeilEF.gamma_line_shift + gammaR_bracket):
(1/2π)∫[H(c+it)+H(1−c−it)]·Γℝ′/Γℝ(c+it) dt = (1/2π)∫ h_k(r)·gammaBracket(r) dr. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variantca43e4332bf1f5080890146fdb59d3f7f6200ca3b82fd8bea13193a1eb9cb2e6.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6642936e98187cf5821a3af9634301cceee123fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
