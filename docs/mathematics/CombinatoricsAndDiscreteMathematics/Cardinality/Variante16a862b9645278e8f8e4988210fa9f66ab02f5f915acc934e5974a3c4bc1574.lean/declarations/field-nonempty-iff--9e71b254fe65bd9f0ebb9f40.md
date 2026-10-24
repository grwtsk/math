# Field.nonempty_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44373cd0-6199-f8e9-2bdd-df49ab1bd19a",
  "kind": "theorem",
  "lexical_name": "Field.nonempty_iff",
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
  "slug": "field-nonempty-iff--9e71b254fe65bd9f0ebb9f40",
  "source": {
    "blob": "b681a629e78b0adafb31fc6d3352666d07e2a8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e71b254fe65bd9f0ebb9f4033b2585908f48b403634bfd4c1af9008c1a41234",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44373cd0-6199-f8e9-2bdd-df49ab1bd19a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Field.nonempty_iff {α : Type u} : Nonempty (Field α) ↔ IsPrimePow #α := by
  rw [Cardinal.isPrimePow_iff]
  cases' fintypeOrInfinite α with h h
  · simpa only [Cardinal.mk_fintype, Nat.cast_inj, exists_eq_left',
      (Cardinal.nat_lt_aleph0 _).not_le, false_or_iff] using Fintype.nonempty_field_iff
  · simpa only [← Cardinal.infinite_iff, h, true_or_iff, iff_true_iff] using Infinite.nonempty_field
#align field.nonempty_iff Field.nonempty_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b681a629e78b0adafb31fc6d3352666d07e2a8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
