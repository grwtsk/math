# Fintype.nonempty_field_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a6b161d-cfc0-a835-a36f-f64239d4ca85",
  "kind": "theorem",
  "lexical_name": "Fintype.nonempty_field_iff",
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
  "slug": "fintype-nonempty-field-iff--36c9a3911e8795cdb87645a2",
  "source": {
    "blob": "b681a629e78b0adafb31fc6d3352666d07e2a8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c9a3911e8795cdb87645a2071bdf7f5604cfe6fa80ab3f3972ce3af62cc75b",
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

Occurrence: `result:7a6b161d-cfc0-a835-a36f-f64239d4ca85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Fintype.nonempty_field_iff {α} [Fintype α] : Nonempty (Field α) ↔ IsPrimePow ‖α‖ := by
  refine' ⟨fun ⟨h⟩ => Fintype.isPrimePow_card_of_field, _⟩
  rintro ⟨p, n, hp, hn, hα⟩
  haveI := Fact.mk hp.nat_prime
  exact ⟨(Fintype.equivOfCardEq ((GaloisField.card p n hn.ne').trans hα)).symm.field⟩
#align fintype.nonempty_field_iff Fintype.nonempty_field_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinality/Variante16a862b9645278e8f8e4988210fa9f66ab02f5f915acc934e5974a3c4bc1574.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b681a629e78b0adafb31fc6d3352666d07e2a8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
