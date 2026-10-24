# finite_vaughan_no_long_products

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b7729af-5d88-b067-11f4-b432e018872f",
  "kind": "theorem",
  "lexical_name": "finite_vaughan_no_long_products",
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
  "slug": "finite-vaughan-no-long-products--f282de041c32f1c5859e8024",
  "source": {
    "blob": "d420ed33979aae04a58f334b40b5ebda53c3060a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f282de041c32f1c5859e80246e4da5b7137b4668666fb412f33359a88e111b02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b7729af-5d88-b067-11f4-b432e018872f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_vaughan_no_long_products (N U V : ℕ) (hU : U ≤ N) (hV : V ≤ N)
    (w : ℕ → ℝ) (hw : ∀ n, N < n → w n = 0)
    (hN : N < (U + 1) * (V + 1)) :
    (∑ n ∈ Finset.Icc 1 N, vonMangoldt n * w n) =
      (∑ m ∈ Finset.Icc 1 V, vonMangoldt m * w m) +
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ k ∈ Finset.Icc 1 N, Real.log k * w (d * k)) -
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        ∑ m ∈ Finset.Icc 1 V, vonMangoldt m *
          ∑ k ∈ Finset.Icc 1 N, w (d * m * k)) := by
  rw [finite_vaughan_sum N U V hU hV w hw,
    complete_long_long_vanishes N U V w hw hN, add_zero]

/-- The source's Möbius cutoff stays fixed; only the auxiliary Mangoldt depth grows. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cb4a92a3ee383e97ad14SourceAdaptiveVaughanNoLongProducts/Variantbf257339dca1fdf6ea5b2e6f42607d435884492233eba4b1fbd531f3f605ba3c.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d420ed33979aae04a58f334b40b5ebda53c3060a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
