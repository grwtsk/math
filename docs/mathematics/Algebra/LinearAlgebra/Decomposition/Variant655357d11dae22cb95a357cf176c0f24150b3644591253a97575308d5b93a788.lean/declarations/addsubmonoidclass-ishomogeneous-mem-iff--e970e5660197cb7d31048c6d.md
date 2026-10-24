# AddSubmonoidClass.IsHomogeneous.mem_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:babf39f4-63b2-e727-fcdb-4d049826c02c",
  "kind": "theorem",
  "lexical_name": "AddSubmonoidClass.IsHomogeneous.mem_iff",
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
  "slug": "addsubmonoidclass-ishomogeneous-mem-iff--e970e5660197cb7d31048c6d",
  "source": {
    "blob": "33809360dda1439aff6e2a2055a359c8df3f6f9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e970e5660197cb7d31048c6d93a28f3191f4feadc161c5de5146875017a45359",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:babf39f4-63b2-e727-fcdb-4d049826c02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubmonoidClass.IsHomogeneous.mem_iff
    {P : Type*} [SetLike P M] [AddSubmonoidClass P M] (p : P)
    (hp : SetLike.IsHomogeneous ℳ p) {x} :
    x ∈ p ↔ ∀ i, (decompose ℳ x i : M) ∈ p := by
  classical
  refine ⟨fun hx i ↦ hp i hx, fun hx ↦ ?_⟩
  rw [← DirectSum.sum_support_decompose ℳ x]
  exact sum_mem (fun i _ ↦ hx i)

end AddCommMonoid

/-- The `-` in the statements below doesn't resolve without this line.

This seems to be a problem of synthesized vs inferred typeclasses disagreeing. If we replace
the statement of `decompose_neg` with `@Eq (⨁ i, ℳ i) (decompose ℳ (-x)) (-decompose ℳ x)`
instead of `decompose ℳ (-x) = -decompose ℳ x`, which forces the typeclasses needed by `⨁ i, ℳ i`
to be found by unification rather than synthesis, then everything works fine without this
instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Decomposition/Variant655357d11dae22cb95a357cf176c0f24150b3644591253a97575308d5b93a788.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33809360dda1439aff6e2a2055a359c8df3f6f9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
