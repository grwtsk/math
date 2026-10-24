# pow_eq_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dd58c9a-824d-f124-fe0a-cde197aa7ca9",
  "kind": "lemma",
  "lexical_name": "pow_eq_top_iff",
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
  "slug": "pow-eq-top-iff--95391a2513d0c059dce83f0c",
  "source": {
    "blob": "c05203915d4f735c0fc83dbb174a65040c5a05bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 46,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95391a2513d0c059dce83f0c9cd6b9f2d6edc91738dcc0035fb4bae6ffe56db1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dd58c9a-824d-f124-fe0a-cde197aa7ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma pow_eq_top_iff {n : ℕ} : a ^ n = ⊤ ↔ a = ⊤ ∧ n ≠ 0 := WithTop.pow_eq_top_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c05203915d4f735c0fc83dbb174a65040c5a05bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
