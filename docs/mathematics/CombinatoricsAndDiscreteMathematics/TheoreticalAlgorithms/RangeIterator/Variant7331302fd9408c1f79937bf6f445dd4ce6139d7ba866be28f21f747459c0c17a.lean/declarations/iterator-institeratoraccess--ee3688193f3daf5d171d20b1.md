# Iterator.instIteratorAccess

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63fe420de8e1ef4e59f26efc28815f5194920e9ba52d47afaa7ce7bae3331e75",
  "kind": "instance",
  "lexical_name": "Iterator.instIteratorAccess",
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
  "slug": "iterator-institeratoraccess--ee3688193f3daf5d171d20b1",
  "source": {
    "blob": "2093b5bbbd36bee526de84a184714f26fcfadcf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1446,
    "line": 1395,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee3688193f3daf5d171d20b1d1d38afb4ea59ed73be0859eea538b394ae7c03b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63fe420de8e1ef4e59f26efc28815f5194920e9ba52d47afaa7ce7bae3331e75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1395–1446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Iterator.instIteratorAccess [UpwardEnumerable α]
    [LawfulUpwardEnumerable α] :
    IteratorAccess (Rxi.Iterator α) Id where
  nextAtIdx? it n := ⟨match it.internalState.next.bind (UpwardEnumerable.succMany? n) with
    | none => .done
    | some next =>
        .yield ⟨⟨UpwardEnumerable.succ? next⟩⟩ next, (by
      induction n generalizing it
      · split <;> rename_i heq
        · apply IterM.IsPlausibleNthOutputStep.done
          simp only [Monadic.isPlausibleStep_iff, Monadic.step]
          simp only [Option.bind_eq_none_iff, succMany?_zero, reduceCtorEq,
            imp_false] at heq
          cases heq' : it.internalState.next
          · simp
          · rw [heq'] at heq
            exfalso
            exact heq _ rfl
        · cases heq' : it.internalState.next
          · simp [heq'] at heq
          simp only [heq', Option.bind_some, succMany?_zero, Option.some.injEq] at heq
          cases heq
          · apply IterM.IsPlausibleNthOutputStep.zero_yield
            simp [Monadic.isPlausibleStep_iff, Monadic.step, heq']
      · rename_i n ih
        split <;> rename_i heq
        · cases heq' : it.internalState.next
          · apply IterM.IsPlausibleNthOutputStep.done
            simp only [Monadic.isPlausibleStep_iff, Monadic.step, heq']
          · rename_i out
            simp only [heq', Option.bind_some, succMany?_add_one_eq_succ?_bind_succMany?] at heq
            specialize ih ⟨⟨UpwardEnumerable.succ? out⟩⟩
            simp only [heq] at ih
            · apply IterM.IsPlausibleNthOutputStep.yield
              · simp only [Monadic.isPlausibleStep_iff, Monadic.step, heq',
                IterStep.yield.injEq]
                exact ⟨rfl, rfl⟩
              · exact ih
        · cases heq' : it.internalState.next
          · simp [heq'] at heq
          rename_i out
          simp only [heq', Option.bind_some] at heq
          have hlt : UpwardEnumerable.LT out _ := ⟨n, heq⟩
          simp only [succMany?_add_one_eq_succ?_bind_succMany?] at heq
          specialize ih ⟨⟨UpwardEnumerable.succ? out⟩⟩
          simp only [heq] at ih
          · apply IterM.IsPlausibleNthOutputStep.yield
            · simp only [Monadic.isPlausibleStep_iff, Monadic.step, heq',
              IterStep.yield.injEq]
              exact ⟨rfl, rfl⟩
            · apply ih)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean#L1395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2093b5bbbd36bee526de84a184714f26fcfadcf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
