# ordered_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d25313-9da3-bfcd-3c85-ee690098008f",
  "kind": "theorem",
  "lexical_name": "ordered_iff",
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
  "slug": "ordered-iff--c066227f5dc10e92b95b43d7",
  "source": {
    "blob": "3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 641,
    "line": 621,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c066227f5dc10e92b95b43d77cdaec91903ec544fc3f5d50e1bd41c1412bd905",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d25313-9da3-bfcd-3c85-ee690098008f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–641.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordered_iff {p : Path α} :
    p.Ordered cmp ↔ p.listL.Pairwise (cmpLT cmp) ∧ p.listR.Pairwise (cmpLT cmp) ∧
      ∀ x ∈ p.listL, ∀ y ∈ p.listR, cmpLT cmp x y := by
  induction p with
  | root => simp
  | left _ _ x _ ih | right _ _ x _ ih => ?_
  all_goals
    rw [Ordered, and_congr_right_eq fun h => by simp [All_def, rootOrdered_iff h]; rfl]
    simp [List.pairwise_append, or_imp, forall_and, ih, RBNode.ordered_iff]
    -- FIXME: simp [and_assoc, and_left_comm, and_comm] is really slow here
  · exact ⟨
      fun ⟨⟨hL, hR, LR⟩, xr, ⟨Lx, xR⟩, ⟨rL, rR⟩, hr⟩ =>
        ⟨hL, ⟨⟨xr, xR⟩, hr, hR, rR⟩, Lx, fun _ ha _ hb => rL _ hb _ ha, LR⟩,
      fun ⟨hL, ⟨⟨xr, xR⟩, hr, hR, rR⟩, Lx, Lr, LR⟩ =>
        ⟨⟨hL, hR, LR⟩, xr, ⟨Lx, xR⟩, ⟨fun _ ha _ hb => Lr _ hb _ ha, rR⟩, hr⟩⟩
  · exact ⟨
      fun ⟨⟨hL, hR, LR⟩, lx, ⟨Lx, xR⟩, ⟨lL, lR⟩, hl⟩ =>
        ⟨⟨hL, ⟨hl, lx⟩, fun _ ha _ hb => lL _ hb _ ha, Lx⟩, hR, LR, lR, xR⟩,
      fun ⟨⟨hL, ⟨hl, lx⟩, Ll, Lx⟩, hR, LR, lR, xR⟩ =>
       ⟨⟨hL, hR, LR⟩, lx, ⟨Lx, xR⟩, ⟨fun _ ha _ hb => Ll _ hb _ ha, lR⟩, hl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variante60f3513ea7020609871737118f25ad86eead4160b55eb829f4091d8d2e0901e.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3be146b98ab1827aeb4a8daa0d2c9ffa70020bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
