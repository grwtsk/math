# tr_respects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f94c99ca-dea7-8f97-d5db-40c6922a569b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e59f6b9b-9d7d-aa98-486b-2d697721617e",
  "kind": "theorem",
  "lexical_name": "tr_respects",
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
  "slug": "tr-respects--bcd37fcb950ec5a4d510ac64",
  "source": {
    "blob": "6ee1a79ce54aa340ecbff62a956332bd6748fbf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1237,
    "line": 1212,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd37fcb950ec5a4d510ac64778bea828ab83485aea327e419e97b8050743221",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59f6b9b-9d7d-aa98-486b-2d697721617e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1212–1237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_respects : Respects (TM0.step M) (TM1.step (tr M)) fun a b ↦ trCfg M a = b :=
  fun_respects.2 fun ⟨q, T⟩ ↦ by
    rcases e : M q T.1 with - | val
    · simp only [TM0.step, trCfg, e]; exact Eq.refl none
    obtain ⟨q', s⟩ := val
    simp only [FRespects, TM0.step, trCfg, e, Option.isSome, cond, Option.map_some]
    revert e
    have : TM1.step (tr M) ⟨some (Λ'.act s q'), (), T⟩ = some ⟨some (Λ'.normal q'), (), match s with
        | TM0.Stmt.move d => T.move d
        | TM0.Stmt.write a => T.write a⟩ := by
      cases s <;> rfl
    intro e
    refine TransGen.head ?_ (TransGen.head' this ?_)
    · simp only [TM1.step, TM1.stepAux, tr]
      rw [e]
      rfl
    cases e' : M q' _
    · apply ReflTransGen.single
      simp only [TM1.step, TM1.stepAux, tr]
      rw [e']
      rfl
    · rfl

end TM0to1

end Turing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PostTuringMachine/Variantcd98a3d7bc3c179f3b9ef45691a5fe29521b9c9f2b932d0ca69f0a28bc00e49a.lean#L1212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee1a79ce54aa340ecbff62a956332bd6748fbf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
