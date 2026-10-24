# eval_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61e64b44-3c6f-75a3-c84f-cd21fceb9c6d",
  "kind": "theorem",
  "lexical_name": "eval_ne",
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
  "slug": "eval-ne--abea3565bc162465d0bdcd33",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 634,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abea3565bc162465d0bdcd33b9dcf708af46a69844b56dbd756f73c8edfeb4f5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e64b44-3c6f-75a3-c84f-cd21fceb9c6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_ne [IsOrderedAddMonoid R] [Archimedean R] {x : M} (hx : x ∉ f.val.domain)
    (y : f.val.domain) : f.eval x ≠ f.val y := by
  -- decompose `x - y = u + v`, where `v ∈ submodule (x - y)` and
  -- `u` is at higher class than `x - y`
  have := val_sub_ne_zero f hx y
  rw [sub_ne_zero, ne_comm, ← sub_ne_zero] at this
  let xy := mk _ this
  have hxy : x - y.val ∈ closedBall K xy := fun _ ↦ by simp; rfl
  rw [← seed.ball_sup_stratum_eq xy, Submodule.mem_sup] at hxy
  obtain ⟨u, hu, v, hv, huv⟩ := hxy
  have huv' : x - y.val - v = u := by simp [← huv]
  rw [mem_ball_iff K] at hu
  -- `z = x - u = y + v` is also in the domain.
  -- Assuming `f.eval x = f.val y` allows us to use `archimedeanClassMk_le_of_eval_eq` on `z`
  have hyv : y.val + v ∈ f.val.domain := Submodule.add_mem _ (by simp) (f.mem_domain hv)
  by_contra! h
  obtain h := f.archimedeanClassMk_le_of_eval_eq h ⟨y.val + v, hyv⟩
  contrapose! h
  simp_rw [← sub_sub, huv']
  obtain rfl | ne := eq_or_ne u 0
  exacts [Ne.lt_top (by simpa), (mk_lt_mk ..).mp (hu ne)]

/-- If there is a `y` in `f`'s domain with `c = ArchimedeanClass (y - x)`, but there
is no closer `z` to `x` where the difference is of a higher `ArchimedeanClass`, then
`f.eval x` is simply `f.val y` truncated at `c`.

This doesn't mean every `x` can be evaluated this way: it is possible that one can find
an infinite chain of `y` that keeps getting closer to `x` in terms of Archimedean classes,
yet `x` is still isolated within a very high Archimedean class. In fact, in the next theorem,
we will show that there is always such chain for `x` not in `f`'s domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
