# surj_pi_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cc06743-344c-9a2c-e137-e52fa6e34718",
  "kind": "theorem",
  "lexical_name": "surj_pi_of_finite",
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
  "slug": "surj-pi-of-finite--45563898a72c55afd51f1ad0",
  "source": {
    "blob": "f151ec791452466c1ad5a252b7ccc1bd7a4362e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant0178752c42edadd6a76c6e972f98fa61905d4bedefe49b7c5afec7586276b43e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45563898a72c55afd51f1ad0225340ec47ea68168bf0c49b9b99e442e01e28ec",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant0178752c42edadd6a76c6e972f98fa61905d4bedefe49b7c5afec7586276b43e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cc06743-344c-9a2c-e137-e52fa6e34718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surj_pi_of_finite {M N F ι : Type*} [Finite ι]
    [CommMonoid M] [CommMonoid N] [FunLike F M N] [MulHomClass F M N] {f : F}
    {S : Submonoid M} (hf : IsLocalizationMap S f) (n : ι → N) :
    ∃ (s : S) (x : ι → M), ∀ i, n i * f s = f (x i) := by
  choose x hx using hf.surj
  have ⟨_⟩ := nonempty_fintype ι
  classical
  refine ⟨∏ i : ι, (x (n i)).2, fun i ↦ (x (n i)).1 * ∏ j ∈ univ.erase i, (x (n j)).2, fun i ↦ ?_⟩
  rw [← univ.mul_prod_erase _ (mem_univ i), S.coe_mul, map_mul, ← mul_assoc, hx, map_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant0178752c42edadd6a76c6e972f98fa61905d4bedefe49b7c5afec7586276b43e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant0178752c42edadd6a76c6e972f98fa61905d4bedefe49b7c5afec7586276b43e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f151ec791452466c1ad5a252b7ccc1bd7a4362e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
