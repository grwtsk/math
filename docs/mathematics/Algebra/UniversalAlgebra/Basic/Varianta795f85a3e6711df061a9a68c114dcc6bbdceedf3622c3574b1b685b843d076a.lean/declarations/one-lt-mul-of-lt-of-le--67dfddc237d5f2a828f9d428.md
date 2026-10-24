# one_lt_mul_of_lt_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3f802043d1b686ac2ff0d8fae0ac64d1d8eb71a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a795f85a3e6711df061a9a68c114dcc6bbdceedf3622c3574b1b685b843d076a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:520fea04-e3df-e29e-321f-8d284ca9a17b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d257521d-4593-6501-9e3c-ef7fb1dda849",
  "kind": "lemma",
  "lexical_name": "one_lt_mul_of_lt_of_le",
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
  "slug": "one-lt-mul-of-lt-of-le--67dfddc237d5f2a828f9d428",
  "source": {
    "blob": "d3f802043d1b686ac2ff0d8fae0ac64d1d8eb71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 386,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Varianta795f85a3e6711df061a9a68c114dcc6bbdceedf3622c3574b1b685b843d076a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67dfddc237d5f2a828f9d428cba08fc60212cd7f566d2660e7b024645de70956",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Varianta795f85a3e6711df061a9a68c114dcc6bbdceedf3622c3574b1b685b843d076a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d257521d-4593-6501-9e3c-ef7fb1dda849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_lt_mul_of_lt_of_le [ZeroLEOneClass M₀] [PosMulMono M₀] (ha : 1 < a) (hb : 1 ≤ b) :
    1 < a * b := ha.trans_le <| le_mul_of_one_le_right (zero_le_one.trans ha.le) hb

alias one_lt_mul := one_lt_mul_of_le_of_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Varianta795f85a3e6711df061a9a68c114dcc6bbdceedf3622c3574b1b685b843d076a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Varianta795f85a3e6711df061a9a68c114dcc6bbdceedf3622c3574b1b685b843d076a.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f802043d1b686ac2ff0d8fae0ac64d1d8eb71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
