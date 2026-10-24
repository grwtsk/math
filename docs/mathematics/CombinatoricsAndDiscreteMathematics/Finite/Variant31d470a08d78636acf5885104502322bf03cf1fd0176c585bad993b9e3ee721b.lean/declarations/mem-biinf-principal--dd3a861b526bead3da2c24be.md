# mem_biInf_principal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6009cc69-4348-c8dc-204f-d4dd8ab094ab",
  "kind": "theorem",
  "lexical_name": "mem_biInf_principal",
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
  "slug": "mem-biinf-principal--dd3a861b526bead3da2c24be",
  "source": {
    "blob": "23c3aebb0cb6e8f873386b31ffccae664f826a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd3a861b526bead3da2c24bead1692c6616310e7c036f40cf07cce23b38d856c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6009cc69-4348-c8dc-204f-d4dd8ab094ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_biInf_principal {ι : Type*} {p : ι → Prop} {s : ι → Set α} {t : Set α} :
    t ∈ ⨅ (i : ι) (_ : p i), 𝓟 (s i) ↔
      ∃ I : Set ι, I.Finite ∧ (∀ i ∈ I, p i) ∧ ⋂ i ∈ I, s i ⊆ t := by
  constructor
  · simp only [mem_iInf (ι := ι), mem_iInf_of_finite, mem_principal]
    rintro ⟨I, hIf, V, hV₁, hV₂, rfl⟩
    choose! t ht₁ ht₂ using hV₁
    refine ⟨I ∩ {i | p i}, hIf.inter_of_left _, fun i ↦ And.right, ?_⟩
    simp only [mem_inter_iff, iInter_and, biInter_eq_iInter, ht₂, mem_setOf_eq]
    gcongr with i hpi
    exact ht₁ i hpi
  · rintro ⟨I, hIf, hpI, hst⟩
    rw [biInter_eq_iInter] at hst
    refine mem_iInf_of_iInter hIf (fun i ↦ ?_) hst
    simp [hpI i i.2]

/-! ### Lattice equations -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c3aebb0cb6e8f873386b31ffccae664f826a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
