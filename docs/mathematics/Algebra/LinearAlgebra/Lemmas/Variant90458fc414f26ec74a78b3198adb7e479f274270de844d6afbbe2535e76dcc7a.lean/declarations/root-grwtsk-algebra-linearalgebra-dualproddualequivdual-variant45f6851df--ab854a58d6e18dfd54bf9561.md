# _root_.GRWTSK.Algebra.LinearAlgebra.DualProdDualEquivDual.Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.mem_span_of_iInf_ker_le_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8e1d440-0d2e-f052-5853-4811d8a944a1",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.DualProdDualEquivDual.Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.mem_span_of_iInf_ker_le_ker",
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
  "slug": "root-grwtsk-algebra-linearalgebra-dualproddualequivdual-variant45f6851df--ab854a58d6e18dfd54bf9561",
  "source": {
    "blob": "8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 415,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab854a58d6e18dfd54bf95610216b5788052933de21de05ca88ef92345259730",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8e1d440-0d2e-f052-5853-4811d8a944a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.DualProdDualEquivDual.Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.mem_span_of_iInf_ker_le_ker [Finite ι] {L : ι → E →ₗ[𝕜] 𝕜} {K : E →ₗ[𝕜] 𝕜}
    (h : ⨅ i, ker (L i) ≤ ker K) : K ∈ span 𝕜 (range L) := by
  have _ := Fintype.ofFinite ι
  let φ : E →ₗ[𝕜] ι → 𝕜 := LinearMap.pi L
  let p := ⨅ i, ker (L i)
  have p_eq : p = ker φ := (ker_pi L).symm
  let ψ : (E ⧸ p) →ₗ[𝕜] ι → 𝕜 := p.liftQ φ p_eq.le
  have _ : FiniteDimensional 𝕜 (E ⧸ p) := of_injective ψ (ker_eq_bot.1 (ker_liftQ_eq_bot' p φ p_eq))
  let L' i : (E ⧸ p) →ₗ[𝕜] 𝕜 := p.liftQ (L i) (iInf_le _ i)
  let K' : (E ⧸ p) →ₗ[𝕜] 𝕜 := p.liftQ K h
  have : ⨅ i, ker (L' i) ≤ ker K' := by
    simp_rw +zetaDelta [← ker_pi, pi_liftQ_eq_liftQ_pi, ker_liftQ_eq_bot' p φ p_eq]
    exact bot_le
  obtain ⟨c, hK'⟩ :=
    (mem_span_range_iff_exists_fun 𝕜).1 (FiniteDimensional.mem_span_of_iInf_ker_le_ker this)
  refine (mem_span_range_iff_exists_fun 𝕜).2 ⟨c, ?_⟩
  conv_lhs => enter [2]; intro i; rw [← p.liftQ_mkQ (L i) (iInf_le _ i)]
  rw [← p.liftQ_mkQ K h]
  ext x
  convert! LinearMap.congr_fun hK' (p.mkQ x)
  simp only [L', LinearMap.coe_sum, Finset.sum_apply, smul_apply, coe_comp, Function.comp_apply,
    smul_eq_mul]

end Submodule

namespace Subspace

open Submodule LinearMap

-- We work in vector spaces because `exists_isCompl` only hold for vector spaces
variable {K V : Type*} [Field K] [AddCommGroup V] [Module K V]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant90458fc414f26ec74a78b3198adb7e479f274270de844d6afbbe2535e76dcc7a.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aa2c24ddd90e87628e34d8f74d6ed1f8bcf3cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
