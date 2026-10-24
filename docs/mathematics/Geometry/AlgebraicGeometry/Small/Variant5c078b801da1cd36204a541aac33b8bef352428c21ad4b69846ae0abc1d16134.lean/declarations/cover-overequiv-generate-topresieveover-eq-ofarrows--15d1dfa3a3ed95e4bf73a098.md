# Cover.overEquiv_generate_toPresieveOver_eq_ofArrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3e992bb-c080-4e00-3f43-aa9e7fd4042c",
  "kind": "lemma",
  "lexical_name": "Cover.overEquiv_generate_toPresieveOver_eq_ofArrows",
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
  "slug": "cover-overequiv-generate-topresieveover-eq-ofarrows--15d1dfa3a3ed95e4bf73a098",
  "source": {
    "blob": "b2a28b851baa2e2769c24606de221a26d8a6bac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15d1dfa3a3ed95e4bf73a0982e32cf0c6b4524f973dd07f7c65df4580f0186c2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e992bb-c080-4e00-3f43-aa9e7fd4042c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Cover.overEquiv_generate_toPresieveOver_eq_ofArrows {X : Over S}
    (𝒰 : Cover.{u} (precoverage P) X.left)
    [𝒰.Over S] : Sieve.overEquiv X (Sieve.generate 𝒰.toPresieveOver) =
      Sieve.ofArrows 𝒰.X 𝒰.f := by
  ext V f
  simp only [Sieve.overEquiv_iff, Sieve.generate_apply]
  constructor
  · rintro ⟨U, h, g, ⟨k⟩, hcomp⟩
    exact ⟨𝒰.X k, h.left, 𝒰.f k, ⟨k⟩, congrArg CommaMorphism.left hcomp⟩
  · rintro ⟨U, h, g, ⟨k⟩, hcomp⟩
    have : 𝒰.f k ≫ X.hom = 𝒰.X k ↘ S := comp_over (𝒰.f k) S
    refine ⟨(𝒰.X k).asOver S, Over.homMk h (by simp [← hcomp, this]), (𝒰.f k).asOver S, ⟨k⟩, ?_⟩
    ext : 1
    simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Small/Variant5c078b801da1cd36204a541aac33b8bef352428c21ad4b69846ae0abc1d16134.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2a28b851baa2e2769c24606de221a26d8a6bac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
