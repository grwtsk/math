# Iter.atIdxSlow?_append_of_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:55134da3-cca9-c774-c6a0-faa247398130",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c092d349-af7c-f898-0fbf-0f608855704d",
  "kind": "theorem",
  "lexical_name": "Iter.atIdxSlow?_append_of_eq_some",
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
  "slug": "iter-atidxslow-append-of-eq-some--7f3d110ccc1497acf61b8baa",
  "source": {
    "blob": "9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f3d110ccc1497acf61b8baad146777d7bef650c9c38595162b6b51290d37e75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c092d349-af7c-f898-0fbf-0f608855704d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.atIdxSlow?_append_of_eq_some {α₁ α₂ β : Type w}
    [Iterator α₁ Id β] [Iterator α₂ Id β] [Productive α₁ Id] [Productive α₂ Id]
    {it₁ : Iter (α := α₁) β} {it₂ : Iter (α := α₂) β} {n : Nat} {b : β}
    (h : it₁.atIdxSlow? n = some b) :
    (it₁.append it₂).atIdxSlow? n = some b := by
  induction n, it₁ using Iter.atIdxSlow?.induct_unfolding generalizing it₂ with
  | yield_zero it it' out hp h' =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    cases h
    simp [step_append, h']
  | yield_succ it it' out hp h' n ih =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    simp [step_append, h', ih h]
  | skip_case n it it' hp h' ih =>
    rw [atIdxSlow?_eq_match (it := it.append it₂)]
    simp [step_append, h', ih h]
  | done_case n it hp h' =>
    cases h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variantff2e59eb18ac82941f55b96916bfe02131623e23132e2fe11c1b9e755196303d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a1b9e5362e57abdb58d0f6ac65a3fb7ddea5155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
