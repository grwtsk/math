# cauchySeq_of_tendsto_div_nhds_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d0c4eef-66fd-feaf-c11d-926348164843",
  "kind": "lemma",
  "lexical_name": "cauchySeq_of_tendsto_div_nhds_one",
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
  "slug": "cauchyseq-of-tendsto-div-nhds-one--bd947f3a8bb955ebf162a96c",
  "source": {
    "blob": "51be85666c8cfc6f0d68d12ec7726ffa09701387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 78,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variantd1ff6a27688a6926528abdb1da3f25cef067ba8c0ba4a001b52aea56c9564479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd947f3a8bb955ebf162a96c719af68fff07b26ef30d0ad8ab900fa73351513e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variantd1ff6a27688a6926528abdb1da3f25cef067ba8c0ba4a001b52aea56c9564479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d0c4eef-66fd-feaf-c11d-926348164843`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cauchySeq_of_tendsto_div_nhds_one {f : ℕ → G}
    (hf : Tendsto (fun n ↦ f (n + 1) / f n) atTop (𝓝 1)) :
    CauchySeq f := by
  suffices Tendsto (fun p : ℕ × ℕ ↦ f p.2 / f p.1) atTop (𝓝 1) by simpa [CauchySeq,
      cauchy_map_iff, prod_atTop_atTop_eq, uniformity_eq_comap_nhds_one G, atTop_neBot]
  rw [tendsto_atTop']
  intro s hs
  obtain ⟨t, ht⟩ := is_nonarchimedean s hs
  obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ b, N ≤ b → f (b + 1) / f b ∈ t := by
    simpa using! tendsto_def.mp hf t t.mem_nhds_one
  refine ⟨(N, N), ?_⟩
  rintro ⟨M, M'⟩ ⟨(hMN : N ≤ M), (hMN' : N ≤ M')⟩
  apply ht
  wlog h : M ≤ M' generalizing M M'
  · simpa [inv_div] using! t.inv_mem <| this _ _ hMN' hMN (le_of_not_ge h)
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h
  clear h hMN'
  induction k with
  | zero => simp
  | succ k ih => simpa using! t.mul_mem (hN _ (by lia : N ≤ M + k)) ih

/-- Let `G` be a complete nonarchimedean multiplicative abelian group, and let `f : α → G` be a
function that tends to one on the filter of cofinite sets. Then `f` is unconditionally
multipliable. -/
@[to_additive /-- Let `G` be a complete nonarchimedean additive abelian group, and let `f : α → G`
be a function that tends to zero on the filter of cofinite sets. Then `f` is unconditionally
summable. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variantd1ff6a27688a6926528abdb1da3f25cef067ba8c0ba4a001b52aea56c9564479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variantd1ff6a27688a6926528abdb1da3f25cef067ba8c0ba4a001b52aea56c9564479.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51be85666c8cfc6f0d68d12ec7726ffa09701387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
