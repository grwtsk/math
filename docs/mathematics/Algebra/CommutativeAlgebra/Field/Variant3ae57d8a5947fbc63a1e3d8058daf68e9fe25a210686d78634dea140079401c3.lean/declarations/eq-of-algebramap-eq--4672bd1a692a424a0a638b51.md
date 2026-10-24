# eq_of_algebraMap_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:969e9d24-24e5-cecd-8410-139c8fe5fdf8",
  "kind": "theorem",
  "lexical_name": "eq_of_algebraMap_eq",
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
  "slug": "eq-of-algebramap-eq--4672bd1a692a424a0a638b51",
  "source": {
    "blob": "ed160a8adf6b568dac7873d92ffde3e4c9efbb9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 142,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4672bd1a692a424a0a638b5107d004fa5cda769f0c8396c0dfc3761ae2d32c12",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:969e9d24-24e5-cecd-8410-139c8fe5fdf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_algebraMap_eq {K S T : Type*} [Field K] [CommRing S] [CommRing T] [Algebra K S]
    [Algebra K T] [Algebra S T] [IsScalarTower K S T] (hST : Function.Injective (algebraMap S T))
    {x : S} {y : T} (hx : IsIntegral K x) (h : y = algebraMap S T x) : minpoly K x = minpoly K y :=
  minpoly.unique _ _ (minpoly.monic hx)
    (by rw [h, aeval_algebraMap_apply, minpoly.aeval, RingHom.map_zero]) fun q q_monic root_q =>
    minpoly.min _ _ q_monic
      ((aeval_algebraMap_eq_zero_iff_of_injective hST).mp
        (h ▸ root_q : Polynomial.aeval (algebraMap S T x) q = 0))
#align minpoly.eq_of_algebra_map_eq minpoly.eq_of_algebraMap_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Field/Variant3ae57d8a5947fbc63a1e3d8058daf68e9fe25a210686d78634dea140079401c3.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed160a8adf6b568dac7873d92ffde3e4c9efbb9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
