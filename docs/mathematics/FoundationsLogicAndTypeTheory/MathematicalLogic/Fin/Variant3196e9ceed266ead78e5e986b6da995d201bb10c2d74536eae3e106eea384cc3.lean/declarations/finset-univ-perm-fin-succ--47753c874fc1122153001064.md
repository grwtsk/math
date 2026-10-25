# Finset.univ_perm_fin_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a73e7bfe41bea232ad239b18d49a74f4206129e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edc33567-379f-eb59-bb14-9dc3595c7605",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e47079b1-f5d2-b560-028c-ed21dc6fe6e1",
  "kind": "theorem",
  "lexical_name": "Finset.univ_perm_fin_succ",
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
  "slug": "finset-univ-perm-fin-succ--47753c874fc1122153001064",
  "source": {
    "blob": "7a73e7bfe41bea232ad239b18d49a74f4206129e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47753c874fc1122153001064b073627f94f60ef04d8e9885beadc6d3f3e47645",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e47079b1-f5d2-b560-028c-ed21dc6fe6e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.univ_perm_fin_succ {n : ℕ} :
    @Finset.univ (Perm <| Fin n.succ) _ =
      (Finset.univ : Finset <| Fin n.succ × Perm (Fin n)).map
        Equiv.Perm.decomposeFin.symm.toEmbedding :=
  (Finset.univ_map_equiv_to_embedding _).symm
#align finset.univ_perm_fin_succ Finset.univ_perm_fin_succ

section CycleRange

/-! ### `cycleRange` section

Define the permutations `Fin.cycleRange i`, the cycle `(0 1 2 ... i)`.
-/


open Equiv.Perm

--Porting note: renamed from finRotate_succ because there is already a theorem with that name
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant3196e9ceed266ead78e5e986b6da995d201bb10c2d74536eae3e106eea384cc3.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a73e7bfe41bea232ad239b18d49a74f4206129e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
