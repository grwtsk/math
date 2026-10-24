# ofJNe0Or1728_j

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13eeae718fcd47f29c5d00bebee176a8cc5d94f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:949e8b7c-8aa5-8008-7365-ce80ce921af0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e94774a-1ddc-1e45-45ad-5fea1089fed3",
  "kind": "lemma",
  "lexical_name": "ofJNe0Or1728_j",
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
  "slug": "ofjne0or1728-j--f9ca3164d0aeae0b667f7bcb",
  "source": {
    "blob": "13eeae718fcd47f29c5d00bebee176a8cc5d94f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ca3164d0aeae0b667f7bcb5165fbacc8f3e18bdc7db4a258552e2bf1abaccf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e94774a-1ddc-1e45-45ad-5fea1089fed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofJNe0Or1728_j (j : R) [Fact (IsUnit j)] [Fact (IsUnit (j - 1728))] :
    (ofJNe0Or1728 j).j = j := by
  rw [WeierstrassCurve.j, Units.inv_mul_eq_iff_eq_mul, ofJNe0Or1728_c₄, coe_Δ', ofJNe0Or1728_Δ]
  ring1

variable {F : Type*} [Field F] (j : F) [DecidableEq F]

/-- For any element j of a field `F`, there exists an elliptic curve over `F`
with j-invariant equal to j (see `WeierstrassCurve.ofJ_j`).
Its coefficients are given explicitly (see `WeierstrassCurve.ofJ0`, `WeierstrassCurve.ofJ1728`
and `WeierstrassCurve.ofJNe0Or1728`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ModelsWithJ/Variant91e38c9ef7469478188b9db5bdf60b66e288541575b84caf9f539b87a0e9ab96.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eeae718fcd47f29c5d00bebee176a8cc5d94f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
