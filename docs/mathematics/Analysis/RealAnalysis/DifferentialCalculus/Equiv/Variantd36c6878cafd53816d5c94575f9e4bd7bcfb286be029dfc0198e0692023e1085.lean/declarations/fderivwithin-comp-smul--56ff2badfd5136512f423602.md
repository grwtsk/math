# fderivWithin_comp_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd6c13bd-bf88-5d85-a7c1-a9621062eb76",
  "kind": "theorem",
  "lexical_name": "fderivWithin_comp_smul",
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
  "slug": "fderivwithin-comp-smul--56ff2badfd5136512f423602",
  "source": {
    "blob": "8c67f64363d225111757c5f9b3b8a3968254cdea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56ff2badfd5136512f423602354505bec8209753a397a2b847eb0099e4bf852e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6c13bd-bf88-5d85-a7c1-a9621062eb76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fderivWithin_comp_smul (c : 𝕜) (hs : UniqueDiffWithinAt 𝕜 s x) :
    fderivWithin 𝕜 (f <| c • ·) s x = c • fderivWithin 𝕜 f (c • s) (c • x) := by
  rcases eq_or_ne c 0 with rfl | hc
  · simp
  · rw [fderivWithin_comp_smul_eq_fderivWithin_smul, fderivWithin_const_smul_field]
    exact hs.smul hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Equiv/Variantd36c6878cafd53816d5c94575f9e4bd7bcfb286be029dfc0198e0692023e1085.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c67f64363d225111757c5f9b3b8a3968254cdea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
