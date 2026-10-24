# isSolvableAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c453c8ea959d05a65360d0042bc162b47665ff85c0c36ba8704f29b8baccda8d",
  "kind": "instance",
  "lexical_name": "isSolvableAdd",
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
  "slug": "issolvableadd--c4076c15a59e03bd2dc5849c",
  "source": {
    "blob": "4cd27e94c4e937952d6f0f6481d77d6beeb16d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 276,
    "path": "GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4076c15a59e03bd2dc5849c6ec5e26c6106a370681e41230e6ee262ebe78aef",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c453c8ea959d05a65360d0042bc162b47665ff85c0c36ba8704f29b8baccda8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isSolvableAdd {I J : LieIdeal R L} [IsSolvable I] [IsSolvable J] :
    IsSolvable (I + J) := by
  obtain ⟨k, hk⟩ := IsSolvable.solvable R I
  obtain ⟨l, hl⟩ := IsSolvable.solvable R J
  exact IsSolvable.mk (LieIdeal.derivedSeries_add_eq_bot hk hl)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd27e94c4e937952d6f0f6481d77d6beeb16d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
