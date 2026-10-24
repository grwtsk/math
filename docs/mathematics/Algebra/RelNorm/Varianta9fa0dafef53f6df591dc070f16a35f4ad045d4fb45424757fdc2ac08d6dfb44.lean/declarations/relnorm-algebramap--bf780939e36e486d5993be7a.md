# relNorm_algebraMap'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fd8c3e6-4168-7520-e42d-854125b6ae2f",
  "kind": "theorem",
  "lexical_name": "relNorm_algebraMap'",
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
  "slug": "relnorm-algebramap--bf780939e36e486d5993be7a",
  "source": {
    "blob": "9761dba926e6906cae2c5d32b53f40c0eb1858f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 382,
    "path": "GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf780939e36e486d5993be7a19c88ee0fdfb89e0cbd0955e4f7da045a87c662c",
  "verification": {
    "reference": "docs/verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fd8c3e6-4168-7520-e42d-854125b6ae2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relNorm_algebraMap' {R'} [CommRing R'] (I : Ideal R') [Algebra R' R]
    [Algebra R' S] [IsScalarTower R' R S] :
    relNorm R (I.map (algebraMap R' S)) = I.map (algebraMap R' R) ^ finrank R S := by
  rw [← relNorm_algebraMap, Ideal.map_map, IsScalarTower.algebraMap_eq R' R S]

section relNorm_prime

variable {R} {S} (P : Ideal S) (p : Ideal R) [hPp : P.LiesOver p]

/--
See `Ideal.relNorm_eq_pow_of_isMaximal` for a more precise statement when `p` is a maximal ideal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RelNorm/Varianta9fa0dafef53f6df591dc070f16a35f4ad045d4fb45424757fdc2ac08d6dfb44.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9761dba926e6906cae2c5d32b53f40c0eb1858f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
