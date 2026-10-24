# count_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19d82f9a-fed3-f038-5024-73ebd69bae0d",
  "kind": "theorem",
  "lexical_name": "count_small",
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
  "slug": "count-small--54247f480f3d28b8bad0a1e5",
  "source": {
    "blob": "561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 263,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54247f480f3d28b8bad0a1e5b472fe25c030996b097057b44596d45990634240",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19d82f9a-fed3-f038-5024-73ebd69bae0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_small (t : ℝ) (ht : |t| ≤ 4) : (Ncount t (t + 1) : ℝ) ≤ Ncount (-4) 5 := by
  obtain ⟨h1, h2⟩ := abs_le.mp ht
  have hsub : zetaZeroConfig.window t (t + 1) ⊆ zetaZeroConfig.window (-4) 5 := by
    rintro ρ ⟨hρ, ha, hb⟩; exact ⟨hρ, by linarith, by linarith⟩
  have h' : zetaZeroConfig.N t (t + 1) ≤ zetaZeroConfig.N (-4) 5 :=
    zetaZeroConfig.finsum_mult_mono (-4) 5 hsub subset_rfl
  rw [zetaZeroConfig_N, zetaZeroConfig_N] at h'
  exact_mod_cast h'

/-- **H-RvM local count for ζ** ([Tit86, Thm 9.2]): ∃ A₀ ≥ 1, ∀ t ∈ ℝ, N(t, t+1] ≤ A₀ log(|t| + 3),
zeros counted with multiplicity (analytic order of Mathlib's riemannZeta), two-sided in t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variant91d705fba1e0b67c2e8331815b38e43bef7668a2b6e73abac31ce12478a39e5f.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `561807f25c3f2966d0a4f6d1e521dbfbcf0dd2e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
