# foldl_argAux_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a301ef3-a410-004b-cb6c-b2c873cf7b6f",
  "kind": "theorem",
  "lexical_name": "foldl_argAux_mem",
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
  "slug": "foldl-argaux-mem--917222360fc7b23e54a743d5",
  "source": {
    "blob": "b53ca8167c6249dced0a2ce247ce3e59f9452cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:917222360fc7b23e54a743d5398478f7b224a0a02054d158f78001c17b62dcb2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a301ef3-a410-004b-cb6c-b2c873cf7b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem foldl_argAux_mem (l) : ∀ a m : α, m ∈ foldl (argAux r) (some a) l → m ∈ a :: l :=
  List.reverseRecOn l (by simp [eq_comm])
    (by
      intro tl hd ih a m
      simp only [foldl_append, foldl_cons, foldl_nil, argAux]
      cases hf : foldl (argAux r) (some a) tl
      · simp (config := { contextual := true })
      · dsimp only
        split_ifs
        · simp (config := { contextual := true })
        · -- `finish [ih _ _ hf]` closes this goal
          simp only [List.mem_cons] at ih
          rcases ih _ _ hf with rfl | H
          · simp (config := { contextual := true }) only [Option.mem_def, Option.some.injEq,
              find?, eq_comm, mem_cons, mem_append, mem_singleton, true_or, implies_true]
          · simp (config := { contextual := true }) [@eq_comm _ _ m, H])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53ca8167c6249dced0a2ce247ce3e59f9452cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
