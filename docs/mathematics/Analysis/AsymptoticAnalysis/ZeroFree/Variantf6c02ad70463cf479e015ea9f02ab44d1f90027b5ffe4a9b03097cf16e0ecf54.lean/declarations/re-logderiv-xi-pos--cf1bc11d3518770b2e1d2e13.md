# re_logDeriv_xi_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1370,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55743f40-59e9-4d73-0588-48d653d830a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7c64cc1-1290-d883-a970-e1b7d9e718b4",
  "kind": "theorem",
  "lexical_name": "re_logDeriv_xi_pos",
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
  "slug": "re-logderiv-xi-pos--cf1bc11d3518770b2e1d2e13",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1385,
    "line": 1370,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf1bc11d3518770b2e1d2e13c5204c550cf87b2f73fc14f7ef5c369dd1b47cdf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7c64cc1-1290-d883-a970-e1b7d9e718b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1370–1385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem re_logDeriv_xi_pos {s : ℂ} (hs : 1 ≤ s.re) : 0 < (logDeriv xi s).re := by
  have hxi := xi_ne_zero_of_one_le_re hs
  rw [re_logDeriv_xi_eq_tsum hxi]
  have hsum := summable_re_one_div hxi
  have hpos : ∀ ρ : zetaZeroConfig.carrier,
      0 < (zeroMult ρ : ℝ) * ((s.re - (ρ : ℂ).re) / Complex.normSq (s - ρ)) := by
    intro ρ
    have hρ : IsNontrivialZero (ρ : ℂ) := ρ.2
    have hm : (1 : ℝ) ≤ zeroMult (ρ : ℂ) := by exact_mod_cast zetaSeam.one_le_mult ρ hρ
    have h1 : 0 < s.re - (ρ : ℂ).re := by linarith [hρ.2.2]
    have h2 : 0 < Complex.normSq (s - ρ) :=
      Complex.normSq_pos.mpr (sub_ne_zero.mpr (fun h => by rw [h] at hs; linarith [hρ.2.2]))
    exact mul_pos (by linarith) (div_pos h1 h2)
  obtain ⟨ρ₀, hρ₀⟩ := exists_isNontrivialZero
  exact hsum.tsum_pos (fun ρ => (hpos ρ).le) ⟨ρ₀, hρ₀⟩ (hpos _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L1370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
