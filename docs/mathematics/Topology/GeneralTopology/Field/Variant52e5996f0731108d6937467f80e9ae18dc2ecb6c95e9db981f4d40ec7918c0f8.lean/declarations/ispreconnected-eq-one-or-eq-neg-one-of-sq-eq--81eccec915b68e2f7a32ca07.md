# IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:952b0b85-e2f6-ff60-d1de-52374b3badf9",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq",
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
  "slug": "ispreconnected-eq-one-or-eq-neg-one-of-sq-eq--81eccec915b68e2f7a32ca07",
  "source": {
    "blob": "bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81eccec915b68e2f7a32ca07c38f50e48d843d4dd727dbcc8a2a15c975e6bc45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:952b0b85-e2f6-ff60-d1de-52374b3badf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.eq_one_or_eq_neg_one_of_sq_eq [Ring 𝕜] [NoZeroDivisors 𝕜]
    (hS : IsPreconnected S) (hf : ContinuousOn f S) (hsq : EqOn (f ^ 2) 1 S) :
    EqOn f 1 S ∨ EqOn f (-1) S := by
  have hmaps : MapsTo f S {1, -1} := by
    simpa only [EqOn, Pi.one_apply, Pi.pow_apply, sq_eq_one_iff] using! hsq
  simpa using! hS.eqOn_const_of_mapsTo (toFinite _).isDiscrete hf hmaps

/-- If `f, g` are functions `α → 𝕜`, both continuous on a preconnected set `S`, with
`f ^ 2 = g ^ 2` on `S`, and `g z ≠ 0` all `z ∈ S`, then either `f = g` or `f = -g` on
`S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
