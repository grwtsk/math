# derivedSeries_lt_top_of_solvable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fa2bdc3-209d-d040-dbce-ee3e75e5b627",
  "kind": "theorem",
  "lexical_name": "derivedSeries_lt_top_of_solvable",
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
  "slug": "derivedseries-lt-top-of-solvable--f2091f6c8bbd04f594d06cdc",
  "source": {
    "blob": "4cd27e94c4e937952d6f0f6481d77d6beeb16d5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 282,
    "path": "GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2091f6c8bbd04f594d06cdc0489afbebd6ed2f7eb3887bfa00087470ef64a38",
  "verification": {
    "reference": "docs/verification/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa2bdc3-209d-d040-dbce-ee3e75e5b627`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivedSeries_lt_top_of_solvable [IsSolvable L] [Nontrivial L] :
    derivedSeries R L 1 < ⊤ := by
  obtain ⟨n, hn⟩ := IsSolvable.solvable (R := R) (L := L)
  rw [lt_top_iff_ne_top]
  intro contra
  rw [LieIdeal.derivedSeries_eq_top n contra] at hn
  exact top_ne_bot hn

open TensorProduct in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Solvable/Variant114f6803d1a025d39c08957b9ec0d3f9844b545cd1f32cc467d0735f310864f7.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd27e94c4e937952d6f0f6481d77d6beeb16d5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
