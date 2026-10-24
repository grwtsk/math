# sum_inertiaDeg_eq_finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdb650b5-b4f2-5164-d4eb-f854fdd85e1d",
  "kind": "theorem",
  "lexical_name": "sum_inertiaDeg_eq_finrank",
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
  "slug": "sum-inertiadeg-eq-finrank--b51b2db31522b48e8be3a8ac",
  "source": {
    "blob": "d27e69e66eacee791f01b903d55dad0cd2f4d5f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b51b2db31522b48e8be3a8aca63ef5b39c1e08523df33464cb7e3c389b83a25d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdb650b5-b4f2-5164-d4eb-f854fdd85e1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_inertiaDeg_eq_finrank [NumberField K] [NumberField L] :
    ∑ w ∈ v.placesOver L, v.inertiaDeg w = Module.finrank K L := by
  rw [← union_ramifiedPlacesOver_unramifiedPlacesOver L v, toFinset_union,
    sum_union (Set.disjoint_toFinset.2 <| disjoint_ramifiedPlacesOver_unramifiedPlacesOver L v),
    sum_congr rfl (fun _ h ↦ inertiaDeg_eq_two (by simpa using h)),
    sum_congr rfl (fun _ h ↦ inertiaDeg_eq_one (by simpa using h)), sum_const, add_comm]
  simp [← unramifedPlacesOver_ncard_add_eq_finrank L v, mul_comm, ncard_eq_toFinset_card']

end NumberField.InfinitePlace

end infinite_place
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d27e69e66eacee791f01b903d55dad0cd2f4d5f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
