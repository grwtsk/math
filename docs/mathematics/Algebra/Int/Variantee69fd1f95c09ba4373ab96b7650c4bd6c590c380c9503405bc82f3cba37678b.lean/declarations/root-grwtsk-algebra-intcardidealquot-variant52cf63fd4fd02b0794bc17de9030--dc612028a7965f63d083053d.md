# _root_.GRWTSK.Algebra.IntCardIdealQuot.Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.Ideal.ringChar_quot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c262ae42-1648-30d3-2d81-8ac77625fbda",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IntCardIdealQuot.Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.Ideal.ringChar_quot",
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
  "slug": "root-grwtsk-algebra-intcardidealquot-variant52cf63fd4fd02b0794bc17de9030--dc612028a7965f63d083053d",
  "source": {
    "blob": "5f8942ca5aa430e45c175d74045e4a3e17d03896",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/Algebra/Int/Variantee69fd1f95c09ba4373ab96b7650c4bd6c590c380c9503405bc82f3cba37678b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc612028a7965f63d083053df6b61cda524293dcd0d7746870c7ab6a534b3ee3",
  "verification": {
    "reference": "docs/verification/Algebra/Int/Variantee69fd1f95c09ba4373ab96b7650c4bd6c590c380c9503405bc82f3cba37678b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c262ae42-1648-30d3-2d81-8ac77625fbda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IntCardIdealQuot.Variant52cf63fd4fd02b0794bc17de90308e4913bfe444bf900b6eded36fefd0bb2098.Ideal.ringChar_quot {S : Type*} [CommRing S] (I : Ideal S) :
    ringChar (S ⧸ I) = absNorm (under ℤ I) := by
  refine ringChar.eq_iff.mpr <| (charP_iff _ _).mpr fun x ↦ ?_
  change Ideal.Quotient.mk I x = 0 ↔ _
  rw [Quotient.eq_zero_iff_mem, ← Int.cast_natCast, cast_mem_ideal_iff, natCast_dvd_natCast]

end Ring

end Int

section CommRing

variable [CommRing R] [IsDomain R] [Algebra.IsIntegral ℤ R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Int/Variantee69fd1f95c09ba4373ab96b7650c4bd6c590c380c9503405bc82f3cba37678b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Int/Variantee69fd1f95c09ba4373ab96b7650c4bd6c590c380c9503405bc82f3cba37678b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8942ca5aa430e45c175d74045e4a3e17d03896` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
