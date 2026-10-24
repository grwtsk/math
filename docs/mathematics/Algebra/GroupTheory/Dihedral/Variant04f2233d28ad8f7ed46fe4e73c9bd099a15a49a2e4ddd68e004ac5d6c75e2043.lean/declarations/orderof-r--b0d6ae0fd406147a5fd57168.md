# orderOf_r

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3122d70d863a32297f11865c24e6501b935567af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38af2f2c-ab75-13f1-ea2f-0f6183e6772a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4c751ef-9e5f-9b7a-a410-4f1231a04f55",
  "kind": "theorem",
  "lexical_name": "orderOf_r",
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
  "slug": "orderof-r--b0d6ae0fd406147a5fd57168",
  "source": {
    "blob": "3122d70d863a32297f11865c24e6501b935567af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 193,
    "path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0d6ae0fd406147a5fd571680201e67a061c4a0487507f605858aaca03dc5063",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4c751ef-9e5f-9b7a-a410-4f1231a04f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_r [NeZero n] (i : ZMod n) : orderOf (r i) = n / Nat.gcd n i.val := by
  conv_lhs => rw [← ZMod.natCast_zmod_val i]
  rw [← r_one_pow, orderOf_pow, orderOf_r_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Dihedral/Variant04f2233d28ad8f7ed46fe4e73c9bd099a15a49a2e4ddd68e004ac5d6c75e2043.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3122d70d863a32297f11865c24e6501b935567af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
