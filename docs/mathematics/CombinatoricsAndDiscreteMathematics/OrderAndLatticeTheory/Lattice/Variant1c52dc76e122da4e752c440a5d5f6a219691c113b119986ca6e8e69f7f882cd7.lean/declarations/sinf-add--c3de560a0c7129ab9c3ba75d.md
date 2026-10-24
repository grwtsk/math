# sInf_add'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb4f2064-b612-4f07-fcab-18bf90746ac2",
  "kind": "theorem",
  "lexical_name": "sInf_add'",
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
  "slug": "sinf-add--c3de560a0c7129ab9c3ba75d",
  "source": {
    "blob": "82611af5326ff53768b1e97ed6246bf64e0d2662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3de560a0c7129ab9c3ba75dcb3b74e6a0a4855f2d0bafd022448d7cb13077c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4f2064-b612-4f07-fcab-18bf90746ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sInf_add' {n : ℕ} {p : ℕ → Prop} (h : 0 < sInf { m | p m }) :
    sInf { m | p m } + n = sInf { m | p (m - n) } := by
  suffices h₁ : n ≤ sInf {m | p (m - n)} by
    convert sInf_add h₁
    simp_rw [Nat.add_sub_cancel_right]
  obtain ⟨m, hm⟩ := nonempty_of_pos_sInf h
  refine
    le_csInf ⟨m + n, ?_⟩ fun b hb ↦
      le_of_not_lt fun hbn ↦
        ne_of_mem_of_not_mem ?_ (notMem_of_lt_sInf h) (Nat.sub_eq_zero_of_le hbn.le)
  · dsimp
    rwa [Nat.add_sub_cancel_right]
  · exact hb

section

variable {α : Type*} [CompleteLattice α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant1c52dc76e122da4e752c440a5d5f6a219691c113b119986ca6e8e69f7f882cd7.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82611af5326ff53768b1e97ed6246bf64e0d2662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
