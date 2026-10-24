# comap_lieSpan_range_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a62765bc-8a13-b708-17d6-a36f36811530",
  "kind": "lemma",
  "lexical_name": "comap_lieSpan_range_eq",
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
  "slug": "comap-liespan-range-eq--27066bc62af33a00db4cbd6b",
  "source": {
    "blob": "42a0a9d181e2cf90b32fc1e9876b5a67b48e6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 784,
    "line": 765,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc9c7a6245b5385914b79aeeaac1679008fef32cb8e5e4f6c19c79cfceb56767b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27066bc62af33a00db4cbd6bd09f69084d9ceaddb8c2c4b52d90ef5d6fec8d23",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subalgebra/Variantc9c7a6245b5385914b79aeeaac1679008fef32cb8e5e4f6c19c79cfceb56767b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62765bc-8a13-b708-17d6-a36f36811530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–784.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comap_lieSpan_range_eq {ι : Type*} (f : ι → K) :
    (lieSpan R L (range ((↑) ∘ f))).comap K.incl = lieSpan R K (range f) := by
  apply le_antisymm
  · intro ⟨x, hx⟩ hx'
    simp only [mem_comap, coe_incl] at hx'
    suffices x ∈ (lieSpan R K (range f)).map K.incl by aesop
    clear hx
    induction hx' using lieSpan_induction with
    | mem u hu =>
      have (i : ι) : f i ∈ lieSpan R K (range f) := subset_lieSpan <| mem_range_self i
      aesop
    | zero => exact zero_mem _
    | add u v _ _ hu hv => revert hu hv; exact add_mem
    | smul t u _ hu => revert hu; exact LieSubalgebra.smul_mem _ _
    | lie u v _ _ hu hv => revert hu hv; exact lie_mem _
  · rw [lieSpan_le]
    rintro - ⟨i, rfl⟩
    simp only [SetLike.mem_coe, mem_comap, coe_incl]
    exact subset_lieSpan <| by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subalgebra/Variantc9c7a6245b5385914b79aeeaac1679008fef32cb8e5e4f6c19c79cfceb56767b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subalgebra/Variantc9c7a6245b5385914b79aeeaac1679008fef32cb8e5e4f6c19c79cfceb56767b.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a0a9d181e2cf90b32fc1e9876b5a67b48e6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
