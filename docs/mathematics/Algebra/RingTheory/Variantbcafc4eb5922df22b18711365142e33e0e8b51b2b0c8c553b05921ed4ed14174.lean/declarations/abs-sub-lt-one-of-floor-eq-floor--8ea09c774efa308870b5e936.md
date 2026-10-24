# abs_sub_lt_one_of_floor_eq_floor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5c2abbb-b502-7374-bfde-9d9d861d88a9",
  "kind": "theorem",
  "lexical_name": "abs_sub_lt_one_of_floor_eq_floor",
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
  "slug": "abs-sub-lt-one-of-floor-eq-floor--8ea09c774efa308870b5e936",
  "source": {
    "blob": "355f844fbbd1f4543d2027247a8d818c66f44e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/Algebra/Ring/Variantbcafc4eb5922df22b18711365142e33e0e8b51b2b0c8c553b05921ed4ed14174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea09c774efa308870b5e9365410f16ef8b9d26b9698613ba3f92ca5ca3d5b35",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantbcafc4eb5922df22b18711365142e33e0e8b51b2b0c8c553b05921ed4ed14174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5c2abbb-b502-7374-bfde-9d9d861d88a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sub_lt_one_of_floor_eq_floor {R : Type*}
    [CommRing R] [LinearOrder R] [IsStrictOrderedRing R] [FloorRing R]
    {a b : R} (h : ⌊a⌋ = ⌊b⌋) : |a - b| < 1 := by
  have : a < ⌊a⌋ + 1 := lt_floor_add_one a
  have : b < ⌊b⌋ + 1 := lt_floor_add_one b
  have : (⌊a⌋ : R) = ⌊b⌋ := Int.cast_inj.2 h
  have : (⌊a⌋ : R) ≤ a := floor_le a
  have : (⌊b⌋ : R) ≤ b := floor_le b
  exact abs_sub_lt_iff.2 ⟨by linarith, by linarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantbcafc4eb5922df22b18711365142e33e0e8b51b2b0c8c553b05921ed4ed14174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantbcafc4eb5922df22b18711365142e33e0e8b51b2b0c8c553b05921ed4ed14174.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f844fbbd1f4543d2027247a8d818c66f44e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
