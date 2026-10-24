# iInf_sets_induct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:296ed856-1587-cfcd-1c04-5f72bd9e9050",
  "kind": "theorem",
  "lexical_name": "iInf_sets_induct",
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
  "slug": "iinf-sets-induct--1ff50de59555dfe6db18fb81",
  "source": {
    "blob": "23c3aebb0cb6e8f873386b31ffccae664f826a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ff50de59555dfe6db18fb811d5789fe0b486e63b6c5f1376c942726b2400d17",
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

Occurrence: `result:296ed856-1587-cfcd-1c04-5f72bd9e9050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_sets_induct {f : ι → Filter α} {s : Set α} (hs : s ∈ iInf f) {p : Set α → Prop}
    (uni : p univ) (ins : ∀ {i s₁ s₂}, s₁ ∈ f i → p s₂ → p (s₁ ∩ s₂)) : p s := by
  classical
  rw [mem_iInf_finite'] at hs
  simp only [← Finset.inf_eq_iInf] at hs
  rcases hs with ⟨is, his⟩
  induction is using Finset.induction_on generalizing s with
  | empty => rwa [mem_top.1 his]
  | insert _ _ _ ih =>
    rw [Finset.inf_insert, mem_inf_iff] at his
    rcases his with ⟨s₁, hs₁, s₂, hs₂, rfl⟩
    exact ins hs₁ (ih hs₂)

/-! #### `principal` equations -/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant31d470a08d78636acf5885104502322bf03cf1fd0176c585bad993b9e3ee721b.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23c3aebb0cb6e8f873386b31ffccae664f826a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
