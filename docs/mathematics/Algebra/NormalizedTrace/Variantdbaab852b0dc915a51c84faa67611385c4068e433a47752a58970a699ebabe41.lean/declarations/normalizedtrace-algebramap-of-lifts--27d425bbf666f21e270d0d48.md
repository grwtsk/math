# normalizedTrace_algebraMap_of_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29e4a971-07f3-20ee-5238-e14edd9fb9b9",
  "kind": "theorem",
  "lexical_name": "normalizedTrace_algebraMap_of_lifts",
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
  "slug": "normalizedtrace-algebramap-of-lifts--27d425bbf666f21e270d0d48",
  "source": {
    "blob": "665dd20ba8c0d7972d58627cfb325be0782f59b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27d425bbf666f21e270d0d48f54ab50fb36853ecf208860e2667a20f99205c6a",
  "verification": {
    "reference": "docs/verification/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29e4a971-07f3-20ee-5238-e14edd9fb9b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedTrace_algebraMap_of_lifts [CharZero E] [Algebra.IsIntegral E K] (a : K)
    (h : minpoly E a ∈ Polynomial.lifts (algebraMap F E)) :
    algebraMap F E (normalizedTrace F K a) = normalizedTrace E K a := by
  have ha : IsIntegral F a := IsIntegral.isIntegral a
  simp [normalizedTrace_minpoly F a, normalizedTrace_minpoly E a,
    ← minpoly.map_algebraMap ha h,
    (minpoly F a).natDegree_map,
    (minpoly F a).nextCoeff_map (algebraMap F E).injective,
    map_mul, map_neg]

/- An auxiliary result to prove `normalizedTrace_trans_apply`. It differs from
`normalizedTrace_trans_apply` only by the extra assumption about finiteness of `E` over `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NormalizedTrace/Variantdbaab852b0dc915a51c84faa67611385c4068e433a47752a58970a699ebabe41.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `665dd20ba8c0d7972d58627cfb325be0782f59b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
