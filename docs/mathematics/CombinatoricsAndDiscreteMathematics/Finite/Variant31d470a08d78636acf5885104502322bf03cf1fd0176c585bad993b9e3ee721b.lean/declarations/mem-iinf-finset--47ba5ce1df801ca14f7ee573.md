# mem_iInf_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d6258ab-e599-bea3-ca58-cb971d1bfc5e",
  "kind": "theorem",
  "lexical_name": "mem_iInf_finset",
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
  "slug": "mem-iinf-finset--47ba5ce1df801ca14f7ee573",
  "source": {
    "blob": "23c3aebb0cb6e8f873386b31ffccae664f826a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47ba5ce1df801ca14f7ee573a14f34ea44fecfacc0e491c75ac279a4f468e0ff",
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

Occurrence: `result:6d6258ab-e599-bea3-ca58-cb971d1bfc5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_iInf_finset {s : Finset α} {f : α → Filter β} {t : Set β} :
    (t ∈ ⨅ a ∈ s, f a) ↔ ∃ p : α → Set β, (∀ a ∈ s, p a ∈ f a) ∧ t = ⋂ a ∈ s, p a := by
  classical
  simp only [← Finset.set_biInter_coe, biInter_eq_iInter, iInf_subtype']
  refine ⟨fun h => ?_, ?_⟩
  · rcases (mem_iInf_of_finite _).1 h with ⟨p, hp, rfl⟩
    refine ⟨fun a => if h : a ∈ s then p ⟨a, h⟩ else univ,
            fun a ha => by simpa [ha] using hp ⟨a, ha⟩, ?_⟩
    refine iInter_congr_of_surjective id surjective_id ?_
    rintro ⟨a, ha⟩
    simp [ha]
  · rintro ⟨p, hpf, rfl⟩
    exact iInter_mem.2 fun a => mem_iInf_of_mem a (hpf a a.2)


@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c3aebb0cb6e8f873386b31ffccae664f826a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
