# prefix_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694cdbdd-b3de-c6ac-6300-409d2a0ec893",
  "kind": "theorem",
  "lexical_name": "prefix_three",
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
  "slug": "prefix-three--08dc69b6b3b2b269cb4192dd",
  "source": {
    "blob": "15c9ff544ebd533f5a320cb151822729018c251b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08dc69b6b3b2b269cb4192dd48caaf4333dff93a0e3c58568aad74ec1c7e240b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694cdbdd-b3de-c6ac-6300-409d2a0ec893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prefix_three : chebyshevPrimePower 3 = Real.log 2 + Real.log 3 := by
  have h := SourceKapitzaDiscrete.closed_prefix_succ (n := 2) (by norm_num)
  norm_num only [Nat.cast_ofNat] at h
  rw [h, prefix_two, ArithmeticFunction.vonMangoldt_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceKapitzaFirstBlock/Variant85d19844c6f862f4c83a1d0a8497ba75ff159665d3214daf1bf79a45b5d68e7c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15c9ff544ebd533f5a320cb151822729018c251b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
