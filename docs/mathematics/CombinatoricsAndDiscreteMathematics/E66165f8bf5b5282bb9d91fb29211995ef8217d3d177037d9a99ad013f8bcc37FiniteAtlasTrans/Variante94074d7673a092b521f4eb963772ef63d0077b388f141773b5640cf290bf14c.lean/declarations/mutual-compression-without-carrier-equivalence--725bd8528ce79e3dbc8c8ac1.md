# mutual_compression_without_carrier_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3404b448-ba41-8c68-9219-7e98a19c1dd2",
  "kind": "theorem",
  "lexical_name": "mutual_compression_without_carrier_equivalence",
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
  "slug": "mutual-compression-without-carrier-equivalence--725bd8528ce79e3dbc8c8ac1",
  "source": {
    "blob": "46601a81a570444cbc0e460f41c9972c954dca6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:725bd8528ce79e3dbc8c8ac13fcdad1c154fadca7c92dbd28cd5a6fa9b43dc24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3404b448-ba41-8c68-9219-7e98a19c1dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mutual_compression_without_carrier_equivalence :
    observedRepresentation.FactorsThrough paddedRepresentation ∧
    paddedRepresentation.FactorsThrough observedRepresentation ∧
    ¬ Nonempty (observedRepresentation.carrier ≃ paddedRepresentation.carrier) := by
  refine ⟨forgetPadding.factors_through, addPadding.factors_through, ?_⟩
  rintro ⟨e⟩
  change Bool ≃ Bool × Bool at e
  have h := Fintype.card_congr e
  change Fintype.card Bool = Fintype.card (Bool × Bool) at h
  norm_num at h

/-- The finite product-observation cell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46601a81a570444cbc0e460f41c9972c954dca6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
