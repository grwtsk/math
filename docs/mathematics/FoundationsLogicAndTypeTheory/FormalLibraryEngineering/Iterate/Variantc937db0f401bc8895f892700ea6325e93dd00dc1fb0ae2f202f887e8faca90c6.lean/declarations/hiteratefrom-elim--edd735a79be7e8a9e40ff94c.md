# hIterateFrom_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c6076bddd437bb0d00ebe78dabd036ec6e66f4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caabc863-352a-4b49-03ae-68535ab5bfd6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db96234c-45d5-807d-1379-505ee16cceb1",
  "kind": "theorem",
  "lexical_name": "hIterateFrom_elim",
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
  "slug": "hiteratefrom-elim--edd735a79be7e8a9e40ff94c",
  "source": {
    "blob": "6c6076bddd437bb0d00ebe78dabd036ec6e66f4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edd735a79be7e8a9e40ff94c3562858ed244ceed8f8901b901b9b2d76c46addd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db96234c-45d5-807d-1379-505ee16cceb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem hIterateFrom_elim {P : Nat → Sort _}(Q : ∀(i : Nat), P i → Prop)
    {n  : Nat}
    (f : ∀(i : Fin n), P i.val → P (i.val+1))
    {i : Nat} (ubnd : i ≤ n)
    (s : P i)
    (init : Q i s)
    (step : ∀(k : Fin n) (s : P k.val), Q k.val s → Q (k.val+1) (f k s)) :
    Q n (hIterateFrom P f i ubnd s) := by
  let ⟨j, p⟩ := Nat.le.dest ubnd
  induction j generalizing i ubnd init with
  | zero =>
    unfold hIterateFrom
    have g : ¬ (i < n) := by simp at p; simp [p]
    have r : Q n (cast (congrArg P p) s) :=
      @Eq.rec Nat i (fun k eq => Q k (cast (congrArg P eq) s)) init n p
    simp only [g, r, dite_false]
  | succ j inv =>
    unfold hIterateFrom
    have d : Nat.succ i + j = n := by simp [Nat.succ_add]; exact p
    have g : i < n := Nat.le.intro d
    simp only [g]
    exact inv _ _ (step ⟨i,g⟩ s init) d

/-
`hIterate_elim` provides a mechanism for showing that the result of
`hIterate` satisifies a property `Q stop` by showing that the states
at the intermediate indices `i : start ≤ i < stop` satisfy `Q i`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Iterate/Variantc937db0f401bc8895f892700ea6325e93dd00dc1fb0ae2f202f887e8faca90c6.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c6076bddd437bb0d00ebe78dabd036ec6e66f4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
