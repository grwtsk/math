# map_invUnitsSub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "621186610eef2265a477fd605ae59a534368a044",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e976f5fa-1ef0-b8b9-8b89-be6521f51593",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6b3169a-ee3d-4707-74b5-0b99c15c8ee8",
  "kind": "theorem",
  "lexical_name": "map_invUnitsSub",
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
  "slug": "map-invunitssub--d7e6000733e1e4bada48a023",
  "source": {
    "blob": "621186610eef2265a477fd605ae59a534368a044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e6000733e1e4bada48a023c67614fd21627c32f3d2fac3e705b901b9557ae3",
  "verification": {
    "reference": "docs/verification/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6b3169a-ee3d-4707-74b5-0b99c15c8ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_invUnitsSub (f : R →+* S) (u : Rˣ) :
    map f (invUnitsSub u) = invUnitsSub (Units.map (f : R →* S) u) := by
  ext
  simp only [← map_pow, coeff_map, coeff_invUnitsSub, one_divp]
  rfl

end Ring

section invOneSubPow

variable (S : Type*) [CommRing S] (d : ℕ)

/--
(1 + X + X^2 + ...) * (1 - X) = 1.

Note that the power series `1 + X + X^2 + ...` is written as `mk 1` where `1` is the constant
function so that `mk 1` is the power series with all coefficients equal to one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WellKnown/Variantf91bf57e173fe19b6b56c024e1facf5014106459fa87fa7d74bfc16f9fd96fa7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621186610eef2265a477fd605ae59a534368a044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
