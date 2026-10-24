# ofFinitary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c7822678019b0d5c7a61524c695e9c12ebe9594bcc098f48753ee5bcc9b089b",
  "kind": "def",
  "lexical_name": "ofFinitary",
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
  "slug": "offinitary--bbde6242e3d2fb3cae0b9f08",
  "source": {
    "blob": "6709a937797d5763a647c6ef29537e0e3261628c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 171,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbde6242e3d2fb3cae0b9f0859aa161a631540e4133700c0ca9ecbd8d3e3ea4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c7822678019b0d5c7a61524c695e9c12ebe9594bcc098f48753ee5bcc9b089b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps E] protected def ofFinitary (E : Set α) (Indep : Set α → Prop)
    (indep_empty : Indep ∅)
    (indep_subset : ∀ ⦃I J⦄, Indep J → I ⊆ J → Indep I)
    (indep_aug : ∀ ⦃I B⦄, Indep I → ¬ Maximal Indep I → Maximal Indep B →
      ∃ x ∈ B \ I, Indep (insert x I))
    (indep_compact : ∀ I, (∀ J, J ⊆ I → J.Finite → Indep J) → Indep I)
    (subset_ground : ∀ I, Indep I → I ⊆ E) : IndepMatroid α where
  E := E
  Indep := Indep
  indep_empty := indep_empty
  indep_subset := indep_subset
  indep_aug := indep_aug
  indep_maximal := by
    refine fun X _ I hI hIX ↦ zorn_subset_nonempty {Y | Indep Y ∧ Y ⊆ X} ?_ I ⟨hI, hIX⟩
    refine fun Is hIs hchain _ ↦
      ⟨⋃₀ Is, ⟨?_, sUnion_subset fun Y hY ↦ (hIs hY).2⟩, fun _ ↦ subset_sUnion_of_mem⟩
    refine indep_compact _ fun J hJ hJfin ↦ ?_
    have hchoose : ∀ e, e ∈ J → ∃ I, I ∈ Is ∧ (e : α) ∈ I := fun _ he ↦ mem_sUnion.1 <| hJ he
    choose! f hf using hchoose
    refine J.eq_empty_or_nonempty.elim (fun hJ ↦ hJ ▸ indep_empty) (fun hne ↦ ?_)
    obtain ⟨x, hxJ, hxmax⟩ := Finite.exists_maximalFor f _ hJfin hne
    refine indep_subset (hIs (hf x hxJ).1).1 fun y hyJ ↦ ?_
    obtain (hle | hle) := hchain.total (hf _ hxJ).1 (hf _ hyJ).1
    · exact hxmax hyJ hle <| (hf _ hyJ).2
    · exact hle (hf _ hyJ).2
  subset_ground := subset_ground

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IndepAxioms/Variant24fbcc3c31fc05c189a9df4526b1670894ba6ba61e992447ac25b990102b9b43.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6709a937797d5763a647c6ef29537e0e3261628c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
