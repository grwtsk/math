# Iter.Intermediate.zip_surj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5b22139-030e-bbd9-6cc8-befe25acda3f",
  "kind": "theorem",
  "lexical_name": "Iter.Intermediate.zip_surj",
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
  "slug": "iter-intermediate-zip-surj--ec3fc0bb2e08b481200fff42",
  "source": {
    "blob": "6e4827db5ef275970daa8a10a885d6bfb37c18a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec3fc0bb2e08b481200fff42aeeaa1132a04992173aeabffc720c44dcfdcb350",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5b22139-030e-bbd9-6cc8-befe25acda3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.Intermediate.zip_surj [Iterator α₁ Id β₁] :
    ∀ it : Iter (α := Zip α₁ Id α₂ β₂) (β₁ × β₂), ∃ it₁ memo it₂, it = Intermediate.zip it₁ memo it₂ := by
  refine fun it => ⟨it.internalState.left.toIter,
      (fun x => ⟨x.1, x.2.choose.toIter, x.2.choose_spec⟩) <$> it.internalState.memoizedLeft,
      it.internalState.right.toIter, ?_⟩
  simp only [zip, toIterM_toIter, Option.map_eq_map, Option.map_map]
  change it = (IterM.Intermediate.zip _ (Option.map id it.internalState.memoizedLeft) it.internalState.right).toIter
  simp only [Option.map_id_fun, id_eq]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variant8b6b3b30f969854469e09a65738bcb74392aabebb10584efcead55e4deafd055.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4827db5ef275970daa8a10a885d6bfb37c18a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
