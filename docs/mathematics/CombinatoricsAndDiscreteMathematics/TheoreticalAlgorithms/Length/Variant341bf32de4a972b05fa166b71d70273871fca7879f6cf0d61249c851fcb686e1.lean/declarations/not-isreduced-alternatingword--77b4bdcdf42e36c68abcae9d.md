# not_isReduced_alternatingWord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7bae812-09be-c299-d5e2-938a7e5aa745",
  "kind": "theorem",
  "lexical_name": "not_isReduced_alternatingWord",
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
  "slug": "not-isreduced-alternatingword--77b4bdcdf42e36c68abcae9d",
  "source": {
    "blob": "0ee1ce90caefbc97ce422900bcacfcc9e72ae0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 253,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77b4bdcdf42e36c68abcae9deb72ff2b7d7aec8da726feb9ed2683578d9092fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7bae812-09be-c299-d5e2-938a7e5aa745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isReduced_alternatingWord (i i' : B) {m : ℕ} (hM : M i i' ≠ 0) (hm : m > M i i') :
    ¬cs.IsReduced (alternatingWord i i' m) := by
  induction' hm with m _ ih
  · -- Base case; m = M i i' + 1
    suffices h : ℓ (π (alternatingWord i i' (M i i' + 1))) < M i i' + 1 by
      unfold IsReduced
      rw [Nat.succ_eq_add_one, length_alternatingWord]
      omega
    have : M i i' + 1 ≤ M i i' * 2 := by linarith [Nat.one_le_iff_ne_zero.mpr hM]
    rw [cs.prod_alternatingWord_eq_prod_alternatingWord_sub i i' _ this]
    have : M i i' * 2 - (M i i' + 1) = M i i' - 1 := by omega
    rw [this]
    calc
      ℓ (π (alternatingWord i' i (M i i' - 1)))
      _ ≤ (alternatingWord i' i (M i i' - 1)).length  := cs.length_wordProd_le _
      _ = M i i' - 1                                  := length_alternatingWord _ _ _
      _ ≤ M i i'                                      := Nat.sub_le _ _
      _ < M i i' + 1                                  := Nat.lt_succ_self _
  · -- Inductive step
    contrapose! ih
    rw [alternatingWord_succ'] at ih
    apply IsReduced.drop (j := 1) at ih
    simpa using ih

/-! ### Descents -/

/-- The proposition that `i` is a left descent of `w`; that is, $\ell(s_i w) < \ell(w)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Length/Variant341bf32de4a972b05fa166b71d70273871fca7879f6cf0d61249c851fcb686e1.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee1ce90caefbc97ce422900bcacfcc9e72ae0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
