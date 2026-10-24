# one_lt_mul_of_lt_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4744a3a-512b-6bbf-7c2b-0fc1e04ecce1",
  "kind": "theorem",
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
  "slug": "one-lt-mul-of-lt-of-le--c0c543c479a7e80113b33770",
  "source": {
    "blob": "34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 325,
    "path": "GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c543c479a7e80113b3377068911fa6dad4da99159664033d8972f4b803bef3",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4744a3a-512b-6bbf-7c2b-0fc1e04ecce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_lt_mul_of_lt_of_le (ha : 1 < a) (hb : 1 ≤ b) : 1 < a * b :=
  ha.trans_le <| le_mul_of_one_le_right (zero_le_one.trans ha.le) hb
#align one_lt_mul_of_lt_of_le one_lt_mul_of_lt_of_le

alias one_lt_mul := one_lt_mul_of_le_of_lt
#align one_lt_mul one_lt_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
