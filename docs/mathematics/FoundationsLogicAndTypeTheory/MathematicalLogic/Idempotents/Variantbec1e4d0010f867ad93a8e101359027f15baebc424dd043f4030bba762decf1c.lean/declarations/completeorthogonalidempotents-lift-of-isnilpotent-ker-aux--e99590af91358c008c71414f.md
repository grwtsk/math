# CompleteOrthogonalIdempotents.lift_of_isNilpotent_ker_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc34437a-5166-6d62-1d7a-af714424a176",
  "kind": "lemma",
  "lexical_name": "CompleteOrthogonalIdempotents.lift_of_isNilpotent_ker_aux",
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
  "slug": "completeorthogonalidempotents-lift-of-isnilpotent-ker-aux--e99590af91358c008c71414f",
  "source": {
    "blob": "8601d8539a4174e4cedb926c7e45962ec96d81de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 308,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e99590af91358c008c71414fef408b39036d34f53f6d2e0b6bad7b1b7a9630a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc34437a-5166-6d62-1d7a-af714424a176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CompleteOrthogonalIdempotents.lift_of_isNilpotent_ker_aux
    (h : ∀ x ∈ RingHom.ker f, IsNilpotent x)
    {n} {e : Fin n → S} (he : CompleteOrthogonalIdempotents e) (he' : ∀ i, e i ∈ f.range) :
    ∃ e' : Fin n → R, CompleteOrthogonalIdempotents e' ∧ f ∘ e' = e := by
  cases subsingleton_or_nontrivial R
  · choose e' he' using he'
    exact ⟨e', .of_subsingleton, funext he'⟩
  cases subsingleton_or_nontrivial S
  · obtain ⟨n, hn⟩ := h 1 (Subsingleton.elim _ _)
    simp at hn
  rcases n with - | n
  · simpa using he.complete
  obtain ⟨e', h₁, h₂⟩ := OrthogonalIdempotents.lift_of_isNilpotent_ker f h he.1 he'
  refine ⟨_, (equiv (finSuccEquiv n)).mpr
    (CompleteOrthogonalIdempotents.option (h₁.embedding (Fin.succEmb _))), funext fun i ↦ ?_⟩
  have (i) : f (e' i) = e i := congr_fun h₂ i
  cases i using Fin.cases with
  | zero => simp [this, Fin.sum_univ_succ, ← he.complete]
  | succ i => simp [this]

/-- A system of complete orthogonal idempotents lift along nil ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Idempotents/Variantbec1e4d0010f867ad93a8e101359027f15baebc424dd043f4030bba762decf1c.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8601d8539a4174e4cedb926c7e45962ec96d81de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
