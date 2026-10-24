# DivisionRing.continuousConstSMul_rat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a4ac32272fb7490f083fcb235d30bb74b5505f7a04d77a5130ebfb4ecb4d40b",
  "kind": "instance",
  "lexical_name": "DivisionRing.continuousConstSMul_rat",
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
  "slug": "divisionring-continuousconstsmul-rat--3c3f3ae274b30c06ab21f4b6",
  "source": {
    "blob": "f34ec7d28e12d5bf1d83d43cde529486a3ca4a1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/Rat/Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c3f3ae274b30c06ab21f4b665b2e65389289173fc016b7ccd0fe37cae45ef87",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rat/Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a4ac32272fb7490f083fcb235d30bb74b5505f7a04d77a5130ebfb4ecb4d40b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance DivisionRing.continuousConstSMul_rat {A} [DivisionRing A] [TopologicalSpace A]
    [ContinuousMul A] [CharZero A] : ContinuousConstSMul ℚ A :=
  ⟨fun r => by simpa only [Algebra.smul_def] using continuous_const.mul continuous_id⟩

end DivisionRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rat/Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rat/Variantbb7b0996909efe69aa4398727f53d374c2b4c506575c182f447d8c112126cf06.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34ec7d28e12d5bf1d83d43cde529486a3ca4a1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
