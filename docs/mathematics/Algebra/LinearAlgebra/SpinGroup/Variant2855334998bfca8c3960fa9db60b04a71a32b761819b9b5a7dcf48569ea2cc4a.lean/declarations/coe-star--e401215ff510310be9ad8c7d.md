# coe_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f06d1130ec5d8d4a552fdb9e670c650135e75f9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c9d35b9-0a65-712e-f837-5f91226c7c8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b4ace35-557f-ae6d-404f-94a38fba8f6c",
  "kind": "theorem",
  "lexical_name": "coe_star",
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
  "slug": "coe-star--e401215ff510310be9ad8c7d",
  "source": {
    "blob": "f06d1130ec5d8d4a552fdb9e670c650135e75f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e401215ff510310be9ad8c7dce8bb42d92186b244f3c70e141cc76f755a99a71",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b4ace35-557f-ae6d-404f-94a38fba8f6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_star {x : pinGroup Q} : ↑(star x) = (star x : CliffordAlgebra Q) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06d1130ec5d8d4a552fdb9e670c650135e75f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
