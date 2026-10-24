# const_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6382d6e-66c7-24e9-6489-3bfd99b317dd",
  "kind": "theorem",
  "lexical_name": "const_smul",
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
  "slug": "const-smul--be17bce7146bda7e8fd0e5f4",
  "source": {
    "blob": "4237fcde64141bdca7beabfd7e94fd483f08050b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be17bce7146bda7e8fd0e5f4df7ceac033827ea0e2ee9476fdeeda983c62ff12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6382d6e-66c7-24e9-6489-3bfd99b317dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem const_smul {f : ∀ i, E i} (hf : Memℓp f p) (c : 𝕜) : Memℓp (c • f) p := by
  rcases p.trichotomy with (rfl | rfl | hp)
  · apply memℓp_zero
    refine hf.finite_dsupport.subset fun i => (?_ : ¬c • f i = 0 → ¬f i = 0)
    exact not_imp_not.mpr fun hf' => hf'.symm ▸ smul_zero c
  · obtain ⟨A, hA⟩ := hf.bddAbove
    refine memℓp_infty ⟨‖c‖ * A, ?_⟩
    rintro a ⟨i, rfl⟩
    dsimp only [Pi.smul_apply]
    refine (norm_smul_le _ _).trans ?_
    gcongr
    exact hA ⟨i, rfl⟩
  · apply memℓp_gen
    dsimp only [Pi.smul_apply]
    have := (hf.summable hp).mul_left (↑(‖c‖₊ ^ p.toReal) : ℝ)
    simp_rw [← coe_nnnorm, ← NNReal.coe_rpow, ← NNReal.coe_mul, NNReal.summable_coe,
      ← NNReal.mul_rpow] at this ⊢
    refine NNReal.summable_of_le ?_ this
    intro i
    gcongr
    apply nnnorm_smul_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant1ad21606e7acbb4a4d11518009854138e78b4da54d27bf53b43b4408d5bcaf2a.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4237fcde64141bdca7beabfd7e94fd483f08050b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
