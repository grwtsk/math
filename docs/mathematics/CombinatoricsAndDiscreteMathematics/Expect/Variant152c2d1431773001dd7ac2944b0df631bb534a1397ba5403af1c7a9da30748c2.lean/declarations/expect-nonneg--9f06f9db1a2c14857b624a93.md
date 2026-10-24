# expect_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa3d7c64-506f-8dab-d008-e62a16517e30",
  "kind": "lemma",
  "lexical_name": "expect_nonneg",
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
  "slug": "expect-nonneg--9f06f9db1a2c14857b624a93",
  "source": {
    "blob": "f396a65996aaa209fcaf3b6bd67a156695628622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f06f9db1a2c14857b624a93a52f57ddc6b9068e64a988f3a52767678f6161a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa3d7c64-506f-8dab-d008-e62a16517e30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expect_nonneg (hf : ∀ i ∈ s, 0 ≤ f i) : 0 ≤ 𝔼 i ∈ s, f i :=
  smul_nonneg (by positivity) <| sum_nonneg hf

end PosSMulMono

section PosSMulMono
variable {M N : Type*} [AddCommMonoid M] [Module ℚ≥0 M]
  [AddCommMonoid N] [PartialOrder N] [IsOrderedAddMonoid N] [Module ℚ≥0 N]
  [PosSMulMono ℚ≥0 N] {m : M → N} {p : M → Prop} {f : ι → M} {s : Finset ι}

/-- Let `{a | p a}` be an additive subsemigroup of an additive commutative monoid `M`. If `m` is a
subadditive function (`m (a + b) ≤ m a + m b`) preserved under division by a natural, `f` is a
function valued in that subsemigroup and `s` is a nonempty set, then
`m (𝔼 i ∈ s, f i) ≤ 𝔼 i ∈ s, m (f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant152c2d1431773001dd7ac2944b0df631bb534a1397ba5403af1c7a9da30748c2.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f396a65996aaa209fcaf3b6bd67a156695628622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
