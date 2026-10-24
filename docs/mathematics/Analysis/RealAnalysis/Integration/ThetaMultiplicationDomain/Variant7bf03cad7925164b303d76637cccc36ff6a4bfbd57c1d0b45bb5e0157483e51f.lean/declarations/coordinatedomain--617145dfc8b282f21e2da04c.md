# coordinateDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd23dc1aed6fc8a4f1f09f3291e26d51250fc33eb3ea724668c1c952ab470055",
  "kind": "def",
  "lexical_name": "coordinateDomain",
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
  "slug": "coordinatedomain--617145dfc8b282f21e2da04c",
  "source": {
    "blob": "515433b03cd43bee70b7fd42f2fbba7b2e47dd5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:617145dfc8b282f21e2da04c23010f4cc0aa4525f7d02170febc94481aee6902",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd23dc1aed6fc8a4f1f09f3291e26d51250fc33eb3ea724668c1c952ab470055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coordinateDomain : Submodule ℂ (Lp ℂ 2 μ) where
  carrier := {f : Lp ℂ 2 μ | MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ}
  zero_mem' := by
    change MemLp (fun x : ℝ => (x : ℂ) * (0 : Lp ℂ 2 μ) x) 2 μ
    apply (MemLp.zero : MemLp (0 : ℝ → ℂ) 2 μ).ae_eq
    filter_upwards [Lp.coeFn_zero ℂ 2 μ] with x hx
    change (0 : ℂ) = (x : ℂ) * (0 : Lp ℂ 2 μ) x
    rw [hx]
    simp
  add_mem' := by
    intro f g hf hg
    change MemLp (fun x : ℝ => (x : ℂ) * (f + g) x) 2 μ
    change MemLp (fun x : ℝ => (x : ℂ) * f x) 2 μ at hf
    change MemLp (fun x : ℝ => (x : ℂ) * g x) 2 μ at hg
    apply (hf.add hg).ae_eq
    filter_upwards [Lp.coeFn_add f g] with x hx
    change (x : ℂ) * f x + (x : ℂ) * g x = (x : ℂ) * (f + g) x
    rw [hx]
    exact (mul_add _ _ _).symm
  smul_mem' := by
    intro c f hf
    apply (hf.const_smul c).ae_eq
    filter_upwards [Lp.coeFn_smul c f] with x hx
    simp [hx, smul_eq_mul, mul_left_comm]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515433b03cd43bee70b7fd42f2fbba7b2e47dd5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
