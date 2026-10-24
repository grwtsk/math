# multiplicity_zero_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63277fd6-4ccb-3bfa-2708-339a79c812db",
  "kind": "theorem",
  "lexical_name": "multiplicity_zero_left",
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
  "slug": "multiplicity-zero-left--09fbd4080f72b655c7346520",
  "source": {
    "blob": "a0d475532761e3f6d3405368eefb04a1a05a4707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 528,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fbd4080f72b655c7346520ad5e4b99f4e9429e06d3a2a8ac9107c6cdeb6992",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63277fd6-4ccb-3bfa-2708-339a79c812db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_zero_left (a : α) : multiplicity 0 a = 0 := by
  by_cases ha : a = 0
  · simp [ha]
  · exact multiplicity_eq_of_emultiplicity_eq_some (emultiplicity_zero_eq_zero_of_ne_zero a ha)

@[deprecated (since := "2026-09-11")] alias multiplicity_zero_eq_zero_of_ne_zero :=
  multiplicity_zero_left

end MonoidWithZero

section Semiring

variable [Semiring α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d475532761e3f6d3405368eefb04a1a05a4707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
