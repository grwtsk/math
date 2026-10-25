# acc_of_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57c6e0a9-d67c-6489-8464-3916b93d6239",
  "kind": "theorem",
  "lexical_name": "acc_of_singleton",
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
  "slug": "acc-of-singleton--85a372fa915b11a295de158d",
  "source": {
    "blob": "024b52d7eb22b52bbf9e68ffe9bf925f1f13098f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85a372fa915b11a295de158dff33841e5b880c8644909790d4ccdb30ed8d4ac5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57c6e0a9-d67c-6489-8464-3916b93d6239`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem acc_of_singleton [IsIrrefl α r] {s : Multiset α} (hs : ∀ a ∈ s, Acc (CutExpand r) {a}) :
    Acc (CutExpand r) s := by
  induction s using Multiset.induction with
  | empty => exact Acc.intro 0 fun s h ↦ (not_cutExpand_zero s h).elim
  | cons a s ihs =>
    rw [← s.singleton_add a]
    rw [forall_mem_cons] at hs
    exact (hs.1.prod_gameAdd <| ihs fun a ha ↦ hs.2 a ha).of_fibration _ (cutExpand_fibration r)

/-- A singleton `{a}` is accessible under `CutExpand r` if `a` is accessible under `r`,
  assuming `r` is irreflexive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variant606089f7d7081375279cf0dad1f20fc6d0b8bd91bbe4ad5b1efe60b58bb72993.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `024b52d7eb22b52bbf9e68ffe9bf925f1f13098f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
