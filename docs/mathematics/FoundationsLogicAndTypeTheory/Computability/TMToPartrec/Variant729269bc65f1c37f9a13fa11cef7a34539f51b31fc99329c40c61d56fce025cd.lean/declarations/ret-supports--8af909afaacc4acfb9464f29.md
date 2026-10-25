# ret_supports

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1935,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51838bd8-259b-d3f6-437c-7e4c230bfe88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a17be509-5554-d4a1-c4c8-7154b1488393",
  "kind": "theorem",
  "lexical_name": "ret_supports",
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
  "slug": "ret-supports--8af909afaacc4acfb9464f29",
  "source": {
    "blob": "5a6689a642cb737eed9cc443ce79432f68557e6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1949,
    "line": 1935,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8af909afaacc4acfb9464f296c30e21be6479052b50af12e720d062837dd9de7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a17be509-5554-d4a1-c4c8-7154b1488393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1935–1949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ret_supports {S k} (H₁ : contSupp k ⊆ S) : TM2.SupportsStmt S (tr (Λ'.ret k)) := by
  have W := fun {q} => trStmts₁_self q
  cases k
  case halt => trivial
  case cons₁ => rw [contSupp_cons₁, Finset.union_subset_iff] at H₁; exact fun _ => H₁.1 W
  case cons₂ => rw [contSupp_cons₂, Finset.union_subset_iff] at H₁; exact fun _ => H₁.1 W
  case comp => rw [contSupp_comp] at H₁; exact fun _ => H₁ (codeSupp_self _ _ W)
  case fix =>
    rw [contSupp_fix] at H₁
    have L := @Finset.mem_union_left; have R := @Finset.mem_union_right
    intro s; dsimp only; cases natEnd s.iget
    · refine' H₁ (R _ <| L _ <| R _ <| R _ <| L _ W)
    · exact H₁ (R _ <| L _ <| R _ <| R _ <| R _ <| Finset.mem_singleton_self _)
#align turing.partrec_to_TM2.ret_supports Turing.PartrecToTM2.ret_supports

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variant729269bc65f1c37f9a13fa11cef7a34539f51b31fc99329c40c61d56fce025cd.lean#L1935).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6689a642cb737eed9cc443ce79432f68557e6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
