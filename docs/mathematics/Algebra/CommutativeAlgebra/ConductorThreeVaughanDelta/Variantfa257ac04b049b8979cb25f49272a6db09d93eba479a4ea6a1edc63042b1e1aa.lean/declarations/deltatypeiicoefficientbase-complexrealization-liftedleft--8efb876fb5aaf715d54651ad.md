# DeltaTypeIICoefficientBase.complexRealization_liftedLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e5afe8b-62e3-fe6a-a07f-846bbc8eb984",
  "kind": "theorem",
  "lexical_name": "DeltaTypeIICoefficientBase.complexRealization_liftedLeft",
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
  "slug": "deltatypeiicoefficientbase-complexrealization-liftedleft--8efb876fb5aaf715d54651ad",
  "source": {
    "blob": "73deebd457dcd17d30175ad0e2946a09c5d704d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 261,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8efb876fb5aaf715d54651ad6d0ef26ba641fda4f67da4123c22917a8f5f651c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e5afe8b-62e3-fe6a-a07f-846bbc8eb984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DeltaTypeIICoefficientBase.complexRealization_liftedLeft {N : ℕ}
    (base : DeltaTypeIICoefficientBase N) (m : VaughanScaleIndex N) :
    base.complexRealization (base.liftedLeftCoefficient m) =
      if vaughanFourthRootCutoff N < m.1 then
        (((conductorThreeIntegerValue m.1 : ℝ) *
          ArithmeticFunction.vonMangoldt m.1 : ℝ) : ℂ)
      else 0 := by
  by_cases hm : vaughanFourthRootCutoff N < m.1
  · simp [DeltaTypeIICoefficientBase.liftedLeftCoefficient,
      hm, base.complexRealization_left]
  · simp [DeltaTypeIICoefficientBase.liftedLeftCoefficient,
      hm]

/-- Delta-ring provenance realizes exactly to the canonical right Vaughan
coefficient used by the packet factorization. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantfa257ac04b049b8979cb25f49272a6db09d93eba479a4ea6a1edc63042b1e1aa.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73deebd457dcd17d30175ad0e2946a09c5d704d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
