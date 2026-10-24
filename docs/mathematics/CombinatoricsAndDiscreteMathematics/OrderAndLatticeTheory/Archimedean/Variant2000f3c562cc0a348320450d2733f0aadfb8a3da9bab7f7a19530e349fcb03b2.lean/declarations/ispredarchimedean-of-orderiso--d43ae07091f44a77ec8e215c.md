# IsPredArchimedean.of_orderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1877871f-5daf-861e-5817-8dc25f5cf5a1",
  "kind": "lemma",
  "lexical_name": "IsPredArchimedean.of_orderIso",
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
  "slug": "ispredarchimedean-of-orderiso--d43ae07091f44a77ec8e215c",
  "source": {
    "blob": "55375833a4aaaac5439661fa3423362481087b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d43ae07091f44a77ec8e215c6475d33fdc2f78ac35eeb9b555e959f651afbf3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1877871f-5daf-861e-5817-8dc25f5cf5a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsPredArchimedean.of_orderIso [PredOrder X] [IsPredArchimedean X] [PredOrder Y]
    (f : X ≃o Y) : IsPredArchimedean Y where
  exists_pred_iterate_of_le {a b} h := by
    refine (exists_pred_iterate_of_le ((map_inv_le_map_inv_iff f).mpr h)).imp ?_
    intro n
    rw [← f.apply_eq_iff_eq, EquivLike.apply_inv_apply]
    rintro rfl
    clear h
    induction n generalizing b with
    | zero => simp
    | succ n IH => simp only [Function.iterate_succ', Function.comp_apply, IH, f.map_pred]

end OrderIso

section OrdConnected

variable [PartialOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant2000f3c562cc0a348320450d2733f0aadfb8a3da9bab7f7a19530e349fcb03b2.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55375833a4aaaac5439661fa3423362481087b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
