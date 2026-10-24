# one_add_le_one_add_mul_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2fa67a2-c58c-7dfe-c4be-f11e7aa48f6f",
  "kind": "lemma",
  "lexical_name": "one_add_le_one_add_mul_one_sub",
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
  "slug": "one-add-le-one-add-mul-one-sub--8df44bb1f63f7a79093961f3",
  "source": {
    "blob": "4c6956cfa4c986a6f1889c0236c0cb367d31c95d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 382,
    "path": "GRWTSK/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8df44bb1f63f7a79093961f348324e7a6d6b6332d1ad96518f1d598360ed10c1",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2fa67a2-c58c-7dfe-c4be-f11e7aa48f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_add_le_one_add_mul_one_sub (h : a + c + b * c ≤ b) : 1 + a ≤ (1 + b) * (1 - c) := by
  rw [mul_one_sub, one_add_mul, le_sub_iff_add_le, add_assoc, ← add_assoc a]
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant5911dd931391aee98c5085e059577ef5e0b781ed607c610e262cce24a098d15d.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6956cfa4c986a6f1889c0236c0cb367d31c95d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
