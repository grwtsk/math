# Fix.ind_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c43e28115819785510f0d9b46182491351a17b4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb400c72-c837-c53d-bbc8-2888af7b03c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f0a6b17-f3e3-aebf-6430-752d15b0b96f",
  "kind": "theorem",
  "lexical_name": "Fix.ind_aux",
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
  "slug": "fix-ind-aux--e64f2f2ffec9dc08cb6d19f8",
  "source": {
    "blob": "c43e28115819785510f0d9b46182491351a17b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64f2f2ffec9dc08cb6d19f861723a07c11f5afa310ab0766ea87b90f528780a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f0a6b17-f3e3-aebf-6430-752d15b0b96f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fix.ind_aux (a : q.P.A) (f' : q.P.drop.B a ⟹ α) (f : q.P.last.B a → q.P.W α) :
    Fix.mk (abs ⟨a, q.P.appendContents f' fun x => ⟦f x⟧⟩) = ⟦q.P.wMk a f' f⟧ := by
  have : Fix.mk (abs ⟨a, q.P.appendContents f' fun x => ⟦f x⟧⟩) = ⟦wrepr (q.P.wMk a f' f)⟧ := by
    apply Quot.sound; apply wEquiv.abs'
    rw [MvPFunctor.wDest'_wMk', abs_map, abs_repr, ← abs_map, MvPFunctor.map_eq]
    conv =>
      rhs
      rw [wrepr_wMk, q.P.wDest'_wMk', abs_repr, MvPFunctor.map_eq]
    congr 2; rw [MvPFunctor.appendContents, MvPFunctor.appendContents]
    rw [appendFun, appendFun, ← splitFun_comp, ← splitFun_comp]
    rfl
  rw [this]
  apply Quot.sound
  apply wrepr_equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Varianta72a26df9454023e07de47fc58738f2b5577963c7097c437965cc4a794015104.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c43e28115819785510f0d9b46182491351a17b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
