# Ideal.map_mk_comap_factorPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a38a429a-8990-4724-3371-a2eed0ede963",
  "kind": "lemma",
  "lexical_name": "Ideal.map_mk_comap_factorPow",
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
  "slug": "ideal-map-mk-comap-factorpow--0a8c3e70cd123f8246bb54a1",
  "source": {
    "blob": "3b102a61d06714039051207d7bc3d1d97ba3833d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 135,
    "path": "GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8c3e70cd123f8246bb54a13b6efed5d3b813d1c53f88be2d5a9989bed4bbd1",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a38a429a-8990-4724-3371-a2eed0ede963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.map_mk_comap_factorPow {a b : ℕ} (apos : 0 < a) (le : a ≤ b) :
    (I.map (mk (I ^ a))).comap (factorPow I le) = I.map (mk (I ^ b))  := by
  apply Ideal.map_mk_comap_factor
  exact pow_le_self (Nat.ne_zero_of_lt apos)

variable {I} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant4205782e89474fdef61bc26c6b8e885195c78ab8426fbc083de16b8f39c0f0b0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b102a61d06714039051207d7bc3d1d97ba3833d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
