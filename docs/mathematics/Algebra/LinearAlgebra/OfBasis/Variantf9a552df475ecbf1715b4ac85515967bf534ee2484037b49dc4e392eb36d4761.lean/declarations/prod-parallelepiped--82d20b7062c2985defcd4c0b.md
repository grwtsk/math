# prod_parallelepiped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b37fa5afdb3882f15353ad3d2a7f7fff4fa63e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d86004f9-5f06-d7dc-f599-530ad3f07d90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae1a45f6-0ff0-887f-079a-24e1591235fc",
  "kind": "theorem",
  "lexical_name": "prod_parallelepiped",
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
  "slug": "prod-parallelepiped--82d20b7062c2985defcd4c0b",
  "source": {
    "blob": "3b37fa5afdb3882f15353ad3d2a7f7fff4fa63e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d20b7062c2985defcd4c0b882afba5cd10c42b9c2553dd6676d43247bc35e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae1a45f6-0ff0-887f-079a-24e1591235fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_parallelepiped (v : Basis ι ℝ E) (w : Basis ι' ℝ F) :
    (v.prod w).parallelepiped = v.parallelepiped ×ˢ w.parallelepiped := by
  ext x
  simp only [Basis.coe_parallelepiped, TopologicalSpace.PositiveCompacts.coe_prod, Set.mem_prod,
    mem_parallelepiped_iff]
  constructor
  · intro h
    rcases h with ⟨t, ht1, ht2⟩
    constructor
    · use t ∘ Sum.inl
      constructor
      · exact ⟨(ht1.1 <| Sum.inl ·), (ht1.2 <| Sum.inl ·)⟩
      simp [ht2, Prod.fst_sum]
    · use t ∘ Sum.inr
      constructor
      · exact ⟨(ht1.1 <| Sum.inr ·), (ht1.2 <| Sum.inr ·)⟩
      simp [ht2, Prod.snd_sum]
  intro h
  rcases h with ⟨⟨t, ht1, ht2⟩, ⟨s, hs1, hs2⟩⟩
  use Sum.elim t s
  constructor
  · constructor
    · change ∀ x : ι ⊕ ι', 0 ≤ Sum.elim t s x
      aesop
    · change ∀ x : ι ⊕ ι', Sum.elim t s x ≤ 1
      aesop
  ext
  · simp [ht2, Prod.fst_sum]
  · simp [hs2, Prod.snd_sum]

variable [MeasurableSpace E] [BorelSpace E]

/-- The Lebesgue measure associated to a basis, giving measure `1` to the parallelepiped spanned
by the basis. -/
irreducible_def addHaar (b : Basis ι ℝ E) : Measure E :=
  Measure.addHaarMeasure b.parallelepiped

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBasis/Variantf9a552df475ecbf1715b4ac85515967bf534ee2484037b49dc4e392eb36d4761.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b37fa5afdb3882f15353ad3d2a7f7fff4fa63e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
