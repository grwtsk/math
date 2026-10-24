# isSetRing_supClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a65bdc91-7428-ca3c-6c35-4f08d49ac0c9",
  "kind": "theorem",
  "lexical_name": "isSetRing_supClosure",
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
  "slug": "issetring-supclosure--d409c1ad56fd682376852478",
  "source": {
    "blob": "87758fd08c290dced41812b80bd380c6e7b59b9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d409c1ad56fd6823768524788d0b0076ab12d0dd3dd87b4c26e801ecf7f0da0e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a65bdc91-7428-ca3c-6c35-4f08d49ac0c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSetRing_supClosure (hC : IsSetSemiring C) : IsSetRing (supClosure C) where
  empty_mem := subset_supClosure hC.empty_mem
  union_mem _ _ h₁ h₂ := supClosed_supClosure h₁ h₂
  sdiff_mem := by
    rintro s _ hs ⟨T, hT, hTC, rfl⟩
    rw [sup'_eq_sup]
    clear hT
    induction T using Finset.induction generalizing s with
    | empty => simpa
    | insert t T _ ih =>
      simp_rw [sup_insert, id, sup_eq_union, ← sdiff_sdiff]
      rw [coe_insert, insert_subset_iff] at hTC
      obtain ⟨htC, hTC⟩ := hTC
      refine ih ?_ hTC
      obtain ⟨S, hS, hSC, rfl⟩ := hs
      rw [sup'_eq_sup, ← Finset.sup_sdiff_right]
      refine supClosed_supClosure.finsetSup_mem hS fun s hs => ?_
      exact hC.sdiff_mem_supClosure (hSC hs) htC

section disjointOfDiff

/-- In a semi-ring of sets `C`, for all sets `s, t ∈ C`, `s \ t` is equal to a disjoint union of
finitely many sets in `C`. The finite set of sets in the union is not unique, but this definition
gives an arbitrary `Finset (Set α)` that satisfies the equality.

We remove the empty set to ensure that `t ∉ hC.disjointOfDiff hs ht` even if `t = ∅`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Variant7e6d289fb110369d689073d687b7ba6c294aa326387b737eeeee3c23c9188967.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87758fd08c290dced41812b80bd380c6e7b59b9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
