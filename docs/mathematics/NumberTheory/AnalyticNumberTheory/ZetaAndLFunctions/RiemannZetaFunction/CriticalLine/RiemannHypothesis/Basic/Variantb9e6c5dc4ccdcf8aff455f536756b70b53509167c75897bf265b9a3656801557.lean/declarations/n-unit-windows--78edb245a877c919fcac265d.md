# N_unit_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a336d0b3-64fd-79bc-4871-9e89882c3ab4",
  "kind": "lemma",
  "lexical_name": "N_unit_windows",
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
  "slug": "n-unit-windows--78edb245a877c919fcac265d",
  "source": {
    "blob": "a3a9c3d59ca18209ec683669224554e2f2b020ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78edb245a877c919fcac265d8dd341e1fe7a75f32be8c039010199681355d461",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a336d0b3-64fd-79bc-4871-9e89882c3ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma N_unit_windows (Z : ZeroConfig) (a : ℝ) (k : ℕ) :
    Z.N a (a + k) = ∑ i ∈ Finset.range k, Z.N (a + i) (a + i + 1) := by
  induction k with
  | zero =>
      simp only [Nat.cast_zero, add_zero, Finset.range_zero, Finset.sum_empty]
      unfold ZeroConfig.N
      have : Z.window a a = ∅ := by
        ext ρ
        simp only [ZeroConfig.window, mem_inter_iff, mem_setOf_eq, mem_empty_iff_false, iff_false]
        rintro ⟨_, h1, h2⟩
        linarith
      rw [this, finsum_mem_empty]
  | succ k ih =>
      rw [Finset.sum_range_succ, ← ih, Z.N_add (by simp : a ≤ a + k) (by push_cast; linarith)]
      push_cast
      ring_nf

end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a9c3d59ca18209ec683669224554e2f2b020ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
