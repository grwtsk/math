# Iter.atIdxSlow?_append_of_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d43367d-77e6-0558-5fda-0c92631c0730",
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
  "slug": "iter-atidxslow-append-of-eq-some--ee88e0d522c2968070206fa1",
  "source": {
    "blob": "c5b37b23ecc7d62c79f01d977985f0e0818351d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee88e0d522c2968070206fa17dc6fc34174bfd672d6fa0acd13591af925ba6be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d43367d-77e6-0558-5fda-0c92631c0730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Append/Variant785d5a9d70f81efa8fbd955443ed86e3e82bad5dfeac446ddd068b25fefa8563.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b37b23ecc7d62c79f01d977985f0e0818351d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
