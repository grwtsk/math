# denote_blastNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0695c91e3da17cdb76de5f3c188c4e4f55e2dbe4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8b478cf-923c-dd44-9a00-84904db7a7bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd04d90c-84b8-1146-c66c-fdff2fa4f765",
  "kind": "theorem",
  "lexical_name": "denote_blastNeg",
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
  "slug": "denote-blastneg--783fc94ca51801e3d5798773",
  "source": {
    "blob": "0695c91e3da17cdb76de5f3c188c4e4f55e2dbe4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Neg/Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:783fc94ca51801e3d57987739c9c26ff8c38c353b9e5a57fa301415dc0e0168c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Neg/Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd04d90c-84b8-1146-c66c-fdff2fa4f765`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_blastNeg (aig : AIG α) (value : BitVec w) (target : RefVec aig w)
    (assign : α → Bool)
    (htarget : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, target.get idx hidx, assign⟧ = value.getLsbD idx) :

    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastNeg aig target).aig, (blastNeg aig target).vec.get idx hidx, assign⟧
          =
        (-value).getLsbD idx := by
  intro idx hidx
  rw [BitVec.neg_eq_not_add]
  unfold blastNeg
  dsimp only
  rw [denote_blastAdd]
  · intro idx hidx
    simp [hidx, htarget]
  · simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Neg/Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Neg/Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0695c91e3da17cdb76de5f3c188c4e4f55e2dbe4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
