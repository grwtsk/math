# Finite.iSup_eq_iSup_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:260f0769-f807-d0e2-7a46-c10d096736ea",
  "kind": "lemma",
  "lexical_name": "Finite.iSup_eq_iSup_subtype",
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
  "slug": "finite-isup-eq-isup-subtype--55218b0bc6ebb8526d85320d",
  "source": {
    "blob": "6f89e88c685b90af8ac8f5e8ffcc9c2845db44e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55218b0bc6ebb8526d85320d2d4def30b76c8c258d211a53dba00d989c150d48",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:260f0769-f807-d0e2-7a46-c10d096736ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma Finite.iSup_eq_iSup_subtype {ι K M F : Type*} [Finite ι] [Zero K] [Zero M]
    [ConditionallyCompleteLattice M] [FunLike F K M] [ZeroHomClass F K M] [NonnegHomClass F K M]
    {x : ι → K} (hx : x ≠ 0) {v : F} :
    ⨆ i, v (x i) =  ⨆ i : {j // x j ≠ 0}, v (x i) := by
  obtain ⟨i, hi⟩ : ∃ j, x j ≠ 0 := Function.ne_iff.mp hx
  have : Nonempty {j // x j ≠ 0} := .intro ⟨i, hi⟩
  have : Nonempty ι := .intro i
  refine le_antisymm (ciSup_le fun j ↦ ?_) <| ciSup_le fun ⟨j, hj⟩ ↦ le_ciSup_of_le j le_rfl
  rcases eq_or_ne (x j) 0 with h | h
  · rw [h, map_zero]
    exact le_ciSup_of_le ⟨i, hi⟩ (apply_nonneg ..)
  · exact le_ciSup_of_le ⟨j, h⟩ le_rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant93e449248f262041dac872d0d2dd77147adbff548d1ed02e23bbf4ac28bbc5f9.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f89e88c685b90af8ac8f5e8ffcc9c2845db44e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
