# momentAtom_le_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13629052-0269-5ff4-f831-75913516336b",
  "kind": "theorem",
  "lexical_name": "momentAtom_le_product",
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
  "slug": "momentatom-le-product--d3169176ffd1510379000cbf",
  "source": {
    "blob": "1d56a4b88fbd630fc93073ef022ddfcaaf730e43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 89,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3169176ffd1510379000cbf7715b5e8fe63b91c85b291be4f07c52ee780247d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13629052-0269-5ff4-f831-75913516336b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentAtom_le_product (r p k : ℕ) (hp : 2≤p) :
    momentAtom r p k ≤ outerWeight r p*exponentWeight r k := by
  have hpp : 0<(p:ℝ) := by exact_mod_cast (show 0<p by omega)
  have hi : (p:ℝ)⁻¹≤(1/2:ℝ) := by
    simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0:ℝ)<2)
      (by exact_mod_cast hp : (2:ℝ)≤p)
  have hk := pow_le_pow_left₀ (le_of_lt (inv_pos.mpr hpp)) hi k
  have hc : 0≤((k+2:ℕ):ℝ)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2 := by
    have hl := Real.log_nonneg (show (1:ℝ)≤p by exact_mod_cast (show 1≤p by omega))
    positivity
  have hm := mul_le_mul_of_nonneg_left hk hc
  calc
    momentAtom r p k = (↑(k+2)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2)*(p:ℝ)⁻¹^k := by
      unfold momentAtom
      rw [inv_pow,pow_add]
      field_simp
    _ ≤ (↑(k+2)^r*(Real.log (p:ℝ))^(r+1)/(p:ℝ)^2)*(1/2:ℝ)^k := hm
    _ = outerWeight r p*exponentWeight r k := by unfold outerWeight exponentWeight; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt02/Variant1837f4e7b92c5fa93038ce273df6392d6f3a08e72b2632676b0f8b7b2af7da26.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d56a4b88fbd630fc93073ef022ddfcaaf730e43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
