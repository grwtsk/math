# isPrimary_finset_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f3fb477-a949-2823-d661-2338793cfed0",
  "kind": "lemma",
  "lexical_name": "isPrimary_finset_inf",
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
  "slug": "isprimary-finset-inf--a804288dbd26e5f589afa8f1",
  "source": {
    "blob": "bf1763c8d108f7816c0b6eb525c1d5037c32a353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a804288dbd26e5f589afa8f1d56b48957855413baf9403e882c6bb5feec85d6c",
  "verification": {
    "reference": "docs/verification/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f3fb477-a949-2823-d661-2338793cfed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isPrimary_finset_inf {ι} {s : Finset ι} {f : ι → Ideal R} {i : ι} (hi : i ∈ s)
    (hs : ∀ ⦃y⦄, y ∈ s → (f y).IsPrimary)
    (hs' : ∀ ⦃y⦄, y ∈ s → (f y).radical = (f i).radical) :
    IsPrimary (s.inf f) := by
  classical
  induction s using Finset.induction_on generalizing i with
  | empty => simp at hi
  | insert a s ha IH =>
    rcases s.eq_empty_or_nonempty with rfl|⟨y, hy⟩
    · simp only [insert_empty_eq, mem_singleton] at hi
      simpa [hi] using hs
    simp only [inf_insert]
    have H : ∀ ⦃x : ι⦄, x ∈ s → (f x).radical = (f y).radical := by
      intro x hx
      rw [hs' (mem_insert_of_mem hx), hs' (mem_insert_of_mem hy)]
    refine isPrimary_inf (hs (by simp)) (IH hy ?_ H) ?_
    · intro x hx
      exact hs (by simp [hx])
    · rw [radical_finset_inf hy H, hs' (mem_insert_self _ _), hs' (mem_insert_of_mem hy)]

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsPrimary/Variantbfcb6dc4bcdfae788a350eb55db9ffb25f2a09b2089300acd9caeee199a4c537.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1763c8d108f7816c0b6eb525c1d5037c32a353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
