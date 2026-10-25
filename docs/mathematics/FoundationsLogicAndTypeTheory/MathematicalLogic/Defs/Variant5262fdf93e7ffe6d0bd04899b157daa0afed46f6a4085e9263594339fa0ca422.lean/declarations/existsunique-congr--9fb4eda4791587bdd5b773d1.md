# existsUnique_congr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e89ffc7eb45fb1f03cb6da018c328df73b326e8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 764,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b4d1bde-33a7-5ed5-45a6-6112497e40f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e429d891-2aad-6402-f33c-67d87879659b",
  "kind": "lemma",
  "lexical_name": "existsUnique_congr'",
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
  "slug": "existsunique-congr--9fb4eda4791587bdd5b773d1",
  "source": {
    "blob": "e89ffc7eb45fb1f03cb6da018c328df73b326e8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 764,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb4eda4791587bdd5b773d10656028da46ae6b41051cd696d59b697817b21d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e429d891-2aad-6402-f33c-67d87879659b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma existsUnique_congr' (h : ∀ b, p (e.symm b) ↔ q b) : (∃! a, p a) ↔ ∃! b, q b :=
  e.existsUnique_congr_left.trans <| by simp [h]

-- We next build some higher arity versions of `Equiv.forall_congr`.
-- Although they appear to just be repeated applications of `Equiv.forall_congr`,
-- unification of metavariables works better with these versions.
-- In particular, they are necessary in `equiv_rw`.
-- (Stopping at ternary functions seems reasonable: at least in 1-categorical mathematics,
-- it's rare to have axioms involving more than 3 elements at once.)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant5262fdf93e7ffe6d0bd04899b157daa0afed46f6a4085e9263594339fa0ca422.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e89ffc7eb45fb1f03cb6da018c328df73b326e8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
