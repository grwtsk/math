# IsReduced.append_flatten_replicate_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1f1f80f-3ab8-5c2c-dffb-0de8da302496",
  "kind": "theorem",
  "lexical_name": "IsReduced.append_flatten_replicate_append",
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
  "slug": "isreduced-append-flatten-replicate-append--0a95df957b3c4bb0e7681f2c",
  "source": {
    "blob": "cf7526ddb011658e8955ed07e87706f8bf3db58a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a95df957b3c4bb0e7681f2c9b81df2c3ea77f02f2211fd9a55354f82292af2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1f1f80f-3ab8-5c2c-dffb-0de8da302496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsReduced.append_flatten_replicate_append (h₁ : IsCyclicallyReduced L₂)
    (h₂ : IsReduced (L₁ ++ L₂ ++ L₃)) {n : ℕ} (hn : n ≠ 0) :
  IsReduced (L₁ ++ (List.replicate n L₂).flatten ++ L₃) := by
  match n with
  | 0 => contradiction
  | n + 1 =>
    if h : L₂ = [] then simp_all else
    have h' : (replicate (n + 1) L₂).flatten ≠ [] := by simp [h]
    refine IsReduced.append_overlap ?_ ?_ (hn := h')
    · rw [replicate_succ, flatten_cons, ← append_assoc]
      refine IsReduced.append_overlap (h₂.infix ⟨[], L₃, by simp⟩) ?_ h
      rw [← flatten_cons, ← replicate_succ]
      exact (h₁.flatten_replicate _).isReduced
    · rw [replicate_succ', flatten_concat]
      refine IsReduced.append_overlap ?_ (h₂.infix ⟨L₁, [], by simp⟩) h
      rw [← flatten_concat, ← replicate_succ']
      exact (h₁.flatten_replicate _).isReduced

/-- This function produces a subword of a word `L` by cancelling the first and last letters of `L`
as long as possible. If `L` is reduced, the resulting word will be cyclically reduced. -/
@[to_additive /-- This function produces a subword of a word `L` by cancelling the first and last
letters of `L` as long as possible. If `L` is reduced, the resulting word will be cyclically
reduced. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variant316078e243edefdbd6ee72878589fb3a63192804c0a59b07e2d9f9409aa649c1.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf7526ddb011658e8955ed07e87706f8bf3db58a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
