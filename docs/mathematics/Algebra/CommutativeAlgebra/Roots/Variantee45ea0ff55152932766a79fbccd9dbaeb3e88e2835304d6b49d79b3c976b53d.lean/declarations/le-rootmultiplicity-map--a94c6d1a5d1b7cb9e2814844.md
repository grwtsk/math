# le_rootMultiplicity_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ae20ddd-a3ef-5fcc-322b-1cd7410e2084",
  "kind": "theorem",
  "lexical_name": "le_rootMultiplicity_map",
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
  "slug": "le-rootmultiplicity-map--a94c6d1a5d1b7cb9e2814844",
  "source": {
    "blob": "bfdf150d98d8ea9f3a190f4cde7d624067aaac86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 737,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94c6d1a5d1b7cb9e281484444aab1d0d43e135c4aa42fdecf4128ed18890f3e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae20ddd-a3ef-5fcc-322b-1cd7410e2084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_rootMultiplicity_map {p : A[X]} {f : A →+* B} (hmap : map f p ≠ 0) (a : A) :
    rootMultiplicity a p ≤ rootMultiplicity (f a) (p.map f) := by
  rw [le_rootMultiplicity_iff hmap]
  refine _root_.trans ?_ ((mapRingHom f).map_dvd (pow_rootMultiplicity_dvd p a))
  rw [map_pow, map_sub, coe_mapRingHom, map_X, map_C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variantee45ea0ff55152932766a79fbccd9dbaeb3e88e2835304d6b49d79b3c976b53d.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdf150d98d8ea9f3a190f4cde7d624067aaac86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
