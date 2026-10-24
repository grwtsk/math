# blockInputsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e9cc8ac-ca6c-deb1-0d28-55cb4922f552",
  "kind": "theorem",
  "lexical_name": "blockInputsAt",
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
  "slug": "blockinputsat--d5a843b1f0847246a90cfa12",
  "source": {
    "blob": "8003f91d09d94a4485213d0a819e7dd2ac406321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 969,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5a843b1f0847246a90cfa12656adc6ff100b71b075edaa4fad88ed03cbd82c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9cc8ac-ca6c-deb1-0d28-55cb4922f552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 969–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockInputsAt (Z : ZeroConfig) (P : Params) (T : ℝ)
    (hconj : PhiHatConj T P) (hreal : PhiHatReal T P) (hPois : PoissonSq T P)
    (hL : 0 < P.L T) (hc : 0 < P.a T * P.L T ^ 2) :
    Assembly.BlockInputs Z P T where
  hat := ⟨hatP Z T P hconj, hatQ Z T P hconj, Z.p T, hatP_posSemidef Z T P hconj hc,
    hatQ_isHermitian Z T P hconj, hat_Az_eq_hatP_add_hatQ Z T P hconj, rank_hatP_le Z T P hconj hc,
    rtrace_hatP_le Z T P hconj hreal hPois hc, posIndex_hatQ_le Z T P hconj hc _,
    by exact_mod_cast NonIprime_add_two_p_le_NIprime Z T⟩
  tilde := ⟨Z.p T, tilde_Az_isHermitian Z T P hconj, posIndex_tilde_Az_le Z T P hconj hL _,
    (ncard_ZIprime_eq Z T).symm ▸ rank_tilde_Az_le Z T P hconj hL,
    by exact_mod_cast s1_add_two_s2_add_two_p_le_NIprime Z T⟩

/-! ### The export for Main.lean: eventually-in-T form with only the genuinely external inputs left

hconj / hreal are discharged here from Zeta23.GzGp.phiHat_conj / phiHat_ofReal
(φ real and even); 0 < L eventually since L = λ·log(T/2π) → ∞. What remains as hypotheses, both in
∀ᶠ form: positivity of a [eq:abdef] (Main has it from Taper: 1 − 2w/L ≤ b ≤ a) and lem:poisson
(Zeta23.Poisson: Params.hasSum_phiHatR_sq). Zeta23/ZeroSide/Final.lean discharges those two as well. -/

/-- L = λ·log(T/2π) → ∞ as T → ∞ (for λ > 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroSide/Variant239d6e0d6b187f0713ca8ef0955964876f99e7f28f29504f7149f555799a898a.lean#L969).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003f91d09d94a4485213d0a819e7dd2ac406321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
