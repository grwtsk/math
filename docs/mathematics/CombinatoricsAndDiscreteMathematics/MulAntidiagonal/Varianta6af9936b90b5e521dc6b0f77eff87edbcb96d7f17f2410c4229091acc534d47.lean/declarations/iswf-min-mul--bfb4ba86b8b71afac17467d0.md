# IsWF.min_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b5c2b9c716ef6aa0ce5678533197858410bf8eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44a1f603-574e-c53e-4952-73f8c1159d25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82f8341e-5de3-47bd-f8b8-2773488890e1",
  "kind": "theorem",
  "lexical_name": "IsWF.min_mul",
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
  "slug": "iswf-min-mul--bfb4ba86b8b71afac17467d0",
  "source": {
    "blob": "7b5c2b9c716ef6aa0ce5678533197858410bf8eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfb4ba86b8b71afac17467d04157177c8b778b9675608c058294be68240b0fec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82f8341e-5de3-47bd-f8b8-2773488890e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsWF.min_mul (hs : s.IsWF) (ht : t.IsWF) (hsn : s.Nonempty) (htn : t.Nonempty) :
    (hs.mul ht).min (hsn.mul htn) = hs.min hsn * ht.min htn := by
  refine le_antisymm (IsWF.min_le _ _ (mem_mul.2 ⟨_, hs.min_mem _, _, ht.min_mem _, rfl⟩)) ?_
  rw [IsWF.le_min_iff]
  rintro _ ⟨x, hx, y, hy, rfl⟩
  exact mul_le_mul' (hs.min_le _ hx) (ht.min_le _ hy)

end Set

namespace Finset

open Pointwise

variable {α : Type*}
variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α]
  {s t : Set α} (hs : s.IsPWO) (ht : t.IsPWO) (a : α)

/-- `Finset.mulAntidiagonal hs ht a` is the set of all pairs of an element in `s` and an
element in `t` that multiply to `a`, but its construction requires proofs that `s` and `t` are
well-ordered. -/
@[to_additive "`Finset.addAntidiagonal hs ht a` is the set of all pairs of an element in
`s` and an element in `t` that add to `a`, but its construction requires proofs that `s` and `t` are
well-ordered."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulAntidiagonal/Varianta6af9936b90b5e521dc6b0f77eff87edbcb96d7f17f2410c4229091acc534d47.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5c2b9c716ef6aa0ce5678533197858410bf8eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
