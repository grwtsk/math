# FiniteReducer.longest_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e77e63c6e838927964af132b9a1189016f339b99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc987836-95ca-2898-a220-0064d92c00cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f237f07-db2c-0d3a-fd45-9349d3ab8723",
  "kind": "theorem",
  "lexical_name": "FiniteReducer.longest_trace",
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
  "slug": "finitereducer-longest-trace--1b4bc4c7e9d31c8839d62b80",
  "source": {
    "blob": "e77e63c6e838927964af132b9a1189016f339b99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b4bc4c7e9d31c8839d62b80f2b57f6ec598f6d67c7db3bbae295f1ab16f21cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f237f07-db2c-0d3a-fd45-9349d3ab8723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteReducer.longest_trace (reducer : FiniteReducer X) (x : X) :
    ∃ y, Trace reducer.step (reducer.height x) x y ∧ ∀ z, ¬reducer.step y z := by
  induction x using reducer.wellFounded.induction with
  | h x ih =>
    by_cases zero : reducer.height x = 0
    · exact ⟨x, zero ▸ Trace.zero x, (reducer.height_zero_iff x).mp zero⟩
    · have attained := listMax_mem_or_zero
        ((reducer.next x).map fun y => reducer.height y + 1)
      rw [← reducer.height_eq x] at attained
      rcases attained with impossible | member
      · exact False.elim (zero impossible)
      · rcases List.mem_map.mp member with ⟨y, member, equation⟩
        have step := (reducer.next_correct x y).mp member
        rcases ih y step with ⟨z, trace, normal⟩
        exact ⟨z, equation ▸ Trace.step step trace, normal⟩

/-- The finite starting catalogue has a zero-inclusive maximal height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant789a10205d93b0fbd7b24323cc82121317cc3f6ae8cbebc16900a47b6fa72612.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e63c6e838927964af132b9a1189016f339b99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
