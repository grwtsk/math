# denote_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "480e18292b7b31f65791cbddd5c52d84dffdcca6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0b88fc6-948b-8772-28ce-d4b9d334ad1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef7b345f-6a54-2e21-6908-59ec1f17b35b",
  "kind": "theorem",
  "lexical_name": "denote_go",
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
  "slug": "denote-go--6cb4367df3bd72a9dfa9871a",
  "source": {
    "blob": "480e18292b7b31f65791cbddd5c52d84dffdcca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cb4367df3bd72a9dfa9871af75d6c471d0eb7a122cf990985578f25cc2cca84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef7b345f-6a54-2e21-6908-59ec1f17b35b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denote_go {aig : AIG α} (curr : Nat) (hcurr : curr ≤ len) (s : RefVec aig curr)
    (input : RefVec aig len) (f : (aig : AIG α) → Ref aig → Entrypoint α)
    [LawfulOperator α Ref f] [LawfulMapOperator α f] :
    ∀ (idx : Nat) (hidx1 : idx < len),
      curr ≤ idx
        →
      ⟦(go aig curr hcurr s input f).aig, (go aig curr hcurr s input f).vec.get idx hidx1, assign⟧
        =
      ⟦f aig (input.get idx hidx1), assign⟧ := by
  intro idx hidx1 hidx2
  generalize hgo : go aig curr hcurr s input f = res
  unfold go at hgo
  split at hgo
  · dsimp only at hgo
    cases Nat.eq_or_lt_of_le hidx2 with
    | inl heq =>
      rw [← hgo]
      rw [go_get]; case hidx => omega
      rw [AIG.RefVec.get_push_ref_eq' (hidx := heq.symm)]
      simp only [← heq]
      rw [go_denote_mem_prefix]
      · simp
      · simp [Ref.hgate]
    | inr hlt =>
      rw [← hgo]
      rw [denote_go]
      · simp [get_cast, -Ref.cast_eq]
      · omega
  · omega
termination_by len - curr

end map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Map/Variante7013c810a23319931d678e71a60f0ba5ffb5af365c5f1ea7038c37d3e4de77b.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480e18292b7b31f65791cbddd5c52d84dffdcca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
