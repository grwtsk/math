# forgetEpsilons_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e200ab20-6071-f81d-a7e0-c00666d52838",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7308b02b-3fca-9fec-e975-2dbb5327795f",
  "kind": "theorem",
  "lexical_name": "forgetEpsilons_apply",
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
  "slug": "forgetepsilons-apply--67aeba52f688db8191eeeaf7",
  "source": {
    "blob": "c5d7be09de4acdbdc278277ff512aaf560befb86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67aeba52f688db8191eeeaf759c78a6a803a9ee85895a77a9d2d18c3e6428bdb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7308b02b-3fca-9fec-e975-2dbb5327795f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forgetEpsilons_apply (p : ℤ[ε]) : forgetEpsilons p = coeff p 0 :=
  rfl

/-- The floor of `n - ε` is `n - 1` but its image under `forgetEpsilons` is `n`, whose floor is
itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/MapFloor/Variant9c647fc2988a5366130c31c30e47bf2a7155a2171938631b91404a80ee9f1995.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d7be09de4acdbdc278277ff512aaf560befb86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
