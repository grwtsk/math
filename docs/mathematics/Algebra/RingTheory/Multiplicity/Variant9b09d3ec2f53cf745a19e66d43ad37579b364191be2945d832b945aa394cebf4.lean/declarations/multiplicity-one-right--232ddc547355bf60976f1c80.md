# multiplicity_one_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e331dda-35c1-0917-c317-ad13426e5ad4",
  "kind": "theorem",
  "lexical_name": "multiplicity_one_right",
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
  "slug": "multiplicity-one-right--232ddc547355bf60976f1c80",
  "source": {
    "blob": "a0d475532761e3f6d3405368eefb04a1a05a4707",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 316,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:232ddc547355bf60976f1c80cfcc72f3cf24a49c63f782089c2086aa9bc94f5b",
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

Occurrence: `result:0e331dda-35c1-0917-c317-ad13426e5ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_one_right : multiplicity a 1 = 0 := by
  by_cases ha : FiniteMultiplicity a 1
  · simp [ha.multiplicity_eq_iff, ha.not_dvd_of_one_right]
  · exact multiplicity_eq_zero_of_not_finiteMultiplicity ha

@[deprecated (since := "2026-09-11")] alias FiniteMultiplicity.one_right := multiplicity_one_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant9b09d3ec2f53cf745a19e66d43ad37579b364191be2945d832b945aa394cebf4.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d475532761e3f6d3405368eefb04a1a05a4707` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
