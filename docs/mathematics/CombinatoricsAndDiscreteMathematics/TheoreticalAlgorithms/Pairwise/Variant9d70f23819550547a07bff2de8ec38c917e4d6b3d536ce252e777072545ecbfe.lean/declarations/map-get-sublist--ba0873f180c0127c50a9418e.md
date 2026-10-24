# map_get_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cd745a0-59d5-aea1-ef6d-3830f9fda5e4",
  "kind": "theorem",
  "lexical_name": "map_get_sublist",
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
  "slug": "map-get-sublist--ba0873f180c0127c50a9418e",
  "source": {
    "blob": "f34d668781c62f2d4f6f286cc5f277b210a50a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba0873f180c0127c50a9418ef27827314c5ba45ac3b515fc44ee43aca4035c8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd745a0-59d5-aea1-ef6d-3830f9fda5e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_get_sublist {l : List α} {is : List (Fin l.length)} (h : is.Pairwise (·.val < ·.val)) :
    is.map (get l) <+ l := by
  suffices ∀ n l', l' = l.drop n → (∀ i ∈ is, n ≤ i) → map (get l) is <+ l'
    from this 0 l (by simp) (by simp)
  intro n l' hl' his
  induction is generalizing n l' with
  | nil => simp
  | cons hd tl IH =>
    simp; cases hl'
    have := IH h.of_cons (hd+1) _ rfl (pairwise_cons.mp h).1
    specialize his hd (.head _)
    have := get_cons_drop .. ▸ this.cons₂ (get l hd)
    have := Sublist.append (nil_sublist (take hd l |>.drop n)) this
    rwa [nil_append, ← (drop_append_of_le_length ?_), take_append_drop] at this
    simp [Nat.min_eq_left (Nat.le_of_lt hd.isLt), his]

/-- given a sublist `l' <+ l`, there exists a list of indices `is` such that
  `l' = map (get l) is`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f34d668781c62f2d4f6f286cc5f277b210a50a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
