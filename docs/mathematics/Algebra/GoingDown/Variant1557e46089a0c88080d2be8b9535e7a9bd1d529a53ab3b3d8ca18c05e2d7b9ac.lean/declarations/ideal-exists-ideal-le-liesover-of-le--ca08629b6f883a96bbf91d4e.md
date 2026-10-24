# Ideal.exists_ideal_le_liesOver_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "300141414c9b80cc209083d2b27ec52c8db6c83d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66f5a245-2f26-c4dd-7169-78b7a7446b19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f7f7b8b-bb59-abaa-6ea8-4bb5892cfc36",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_ideal_le_liesOver_of_le",
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
  "slug": "ideal-exists-ideal-le-liesover-of-le--ca08629b6f883a96bbf91d4e",
  "source": {
    "blob": "300141414c9b80cc209083d2b27ec52c8db6c83d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca08629b6f883a96bbf91d4e8c2b0ebc9a88e147e24d217607d80169740ccdac",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f7f7b8b-bb59-abaa-6ea8-4bb5892cfc36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_ideal_le_liesOver_of_le [Algebra.HasGoingDown R S]
    {p q : Ideal R} [p.IsPrime] [q.IsPrime] (Q : Ideal S) [Q.IsPrime] [Q.LiesOver q]
    (hle : p ≤ q) :
    ∃ P ≤ Q, P.IsPrime ∧ P.LiesOver p := by
  by_cases h : p = q
  · subst h
    use Q
  · have := Q.over_def q
    subst this
    exact Algebra.HasGoingDown.exists_ideal_le_liesOver_of_lt Q (lt_of_le_of_ne hle h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant1557e46089a0c88080d2be8b9535e7a9bd1d529a53ab3b3d8ca18c05e2d7b9ac.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `300141414c9b80cc209083d2b27ec52c8db6c83d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
