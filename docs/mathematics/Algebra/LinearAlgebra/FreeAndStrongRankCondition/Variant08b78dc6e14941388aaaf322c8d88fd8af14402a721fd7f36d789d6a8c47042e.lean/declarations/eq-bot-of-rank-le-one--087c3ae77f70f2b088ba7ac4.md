# eq_bot_of_rank_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cb3051d-a06c-e6b3-5430-468cc40fd3f3",
  "kind": "theorem",
  "lexical_name": "eq_bot_of_rank_le_one",
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
  "slug": "eq-bot-of-rank-le-one--087c3ae77f70f2b088ba7ac4",
  "source": {
    "blob": "6d2d5ffffaeef593b7b7ca140c440764ffc2015d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 264,
    "path": "GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:087c3ae77f70f2b088ba7ac400b79c68e077acd18d5e0931277f981c4cdd1301",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cb3051d-a06c-e6b3-5430-468cc40fd3f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_of_rank_le_one (h : Module.rank F S ≤ 1) [Module.Free F S] : S = ⊥ := by
  nontriviality E
  obtain ⟨κ, b⟩ := Module.Free.exists_basis (R := F) (M := S)
  by_cases h1 : Module.rank F S = 1
  · refine bot_unique fun x hx ↦ Algebra.mem_bot.2 ?_
    rw [← b.mk_eq_rank'', eq_one_iff_unique, ← unique_iff_subsingleton_and_nonempty] at h1
    obtain ⟨h1⟩ := h1
    obtain ⟨y, hy⟩ := (bijective_algebraMap_of_linearEquiv (b.repr ≪≫ₗ
      Finsupp.LinearEquiv.finsuppUnique _ _ _).symm).surjective ⟨x, hx⟩
    exact ⟨y, congr(Subtype.val $(hy))⟩
  haveI := mk_eq_zero_iff.1 (b.mk_eq_rank''.symm ▸ lt_one_iff_zero.1 (h.lt_of_ne h1))
  haveI := b.repr.toEquiv.subsingleton
  exact False.elim <| one_ne_zero congr(S.val $(Subsingleton.elim 1 0))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FreeAndStrongRankCondition/Variant08b78dc6e14941388aaaf322c8d88fd8af14402a721fd7f36d789d6a8c47042e.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2d5ffffaeef593b7b7ca140c440764ffc2015d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
