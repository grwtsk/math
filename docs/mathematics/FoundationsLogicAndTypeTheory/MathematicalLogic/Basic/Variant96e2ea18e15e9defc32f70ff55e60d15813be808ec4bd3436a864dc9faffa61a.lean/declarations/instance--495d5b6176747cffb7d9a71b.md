# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9452411ebab8b460cddc2162577d58c52c6b972ae627d57ce7d8b9980361224c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--495d5b6176747cffb7d9a71b",
  "source": {
    "blob": "0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:495d5b6176747cffb7d9a71ba4947ae3c20bb3573f4c32a70b66cdee7342c6a2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9452411ebab8b460cddc2162577d58c52c6b972ae627d57ce7d8b9980361224c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulTraversable LazyList := by
  apply Equiv.isLawfulTraversable' listEquivLazyList <;> intros <;> ext <;> rename_i f xs
  · induction' xs using LazyList.rec with _ _ _ _ ih
    · rfl
    · simpa only [Equiv.map, Functor.map, listEquivLazyList, Equiv.coe_fn_symm_mk, Equiv.coe_fn_mk,
        LazyList.traverse, Seq.seq, toList, ofList, cons.injEq, true_and]
    · ext; apply ih
  · simp only [Equiv.map, listEquivLazyList, Equiv.coe_fn_symm_mk, Equiv.coe_fn_mk, comp,
      Functor.mapConst]
    induction' xs using LazyList.rec with _ _ _ _ ih
    · rfl
    · simpa only [toList, ofList, LazyList.traverse, Seq.seq, Functor.map, cons.injEq, true_and]
    · congr; apply ih
  · simp only [traverse, Equiv.traverse, listEquivLazyList, Equiv.coe_fn_mk, Equiv.coe_fn_symm_mk]
    induction' xs using LazyList.rec with _ tl ih _ ih
    · simp only [List.traverse, map_pure]; rfl
    · have : tl.get.traverse f = ofList <$> tl.get.toList.traverse f := ih
      simp only [traverse._eq_2, ih, Functor.map_map, seq_map_assoc, toList, List.traverse, map_seq]
      · rfl
    · apply ih

/-- `init xs`, if `xs` non-empty, drops the last element of the list.
Otherwise, return the empty list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant96e2ea18e15e9defc32f70ff55e60d15813be808ec4bd3436a864dc9faffa61a.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b10c7c2cf1b0a1c7ab5db30588d5caaff6c4fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
