# fderivWithin_comp_derivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3142959-5097-fa1e-4a96-594e194fafaf",
  "kind": "theorem",
  "lexical_name": "fderivWithin_comp_derivWithin",
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
  "slug": "fderivwithin-comp-derivwithin--31d7cbbaf3acbbfe56eb8ded",
  "source": {
    "blob": "4c24c13cf1eac1a5a3132b53e2ed0cb73c6706f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 416,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4bac1d20b227f24a00a7dbf5c75b961050735fa12817cc5fc1331ecffde000dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31d7cbbaf3acbbfe56eb8ded29fc76fe55ec57cd8a0aec1509456f2a38e782e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4bac1d20b227f24a00a7dbf5c75b961050735fa12817cc5fc1331ecffde000dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3142959-5097-fa1e-4a96-594e194fafaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fderivWithin_comp_derivWithin {t : Set F} (hl : DifferentiableWithinAt 𝕜 l t (f x))
    (hf : DifferentiableWithinAt 𝕜 f s x) (hs : MapsTo f s t) :
    derivWithin (l ∘ f) s x = (fderivWithin 𝕜 l t (f x) : F → E) (derivWithin f s x) := by
  by_cases hsx : UniqueDiffWithinAt 𝕜 s x
  · exact (hl.hasFDerivWithinAt.comp_hasDerivWithinAt x hf.hasDerivWithinAt hs).derivWithin hsx
  · simp [derivWithin_zero_of_not_uniqueDiffWithinAt hsx]

@[deprecated (since := "2024-10-31")]
alias fderivWithin.comp_derivWithin := fderivWithin_comp_derivWithin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4bac1d20b227f24a00a7dbf5c75b961050735fa12817cc5fc1331ecffde000dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4bac1d20b227f24a00a7dbf5c75b961050735fa12817cc5fc1331ecffde000dd.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c24c13cf1eac1a5a3132b53e2ed0cb73c6706f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
