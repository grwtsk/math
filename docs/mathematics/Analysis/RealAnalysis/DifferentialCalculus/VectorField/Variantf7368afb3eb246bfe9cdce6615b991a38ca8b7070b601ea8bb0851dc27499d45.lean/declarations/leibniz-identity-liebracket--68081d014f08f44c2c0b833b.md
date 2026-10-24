# leibniz_identity_lieBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf3613b1-7608-dc39-faca-9615424bbb12",
  "kind": "lemma",
  "lexical_name": "leibniz_identity_lieBracket",
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
  "slug": "leibniz-identity-liebracket--68081d014f08f44c2c0b833b",
  "source": {
    "blob": "e2552e1d8be91b5a59d4844051626c460ac83cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 468,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68081d014f08f44c2c0b833b2d419b36bcfbc0f4b22846822c82df66726c3e15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3613b1-7608-dc39-faca-9615424bbb12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leibniz_identity_lieBracket (hn : minSmoothness 𝕜 2 ≤ n) {U V W : E → E} {x : E}
    (hU : ContDiffAt 𝕜 n U x) (hV : ContDiffAt 𝕜 n V x) (hW : ContDiffAt 𝕜 n W x) :
    lieBracket 𝕜 U (lieBracket 𝕜 V W) x =
      lieBracket 𝕜 (lieBracket 𝕜 U V) W x + lieBracket 𝕜 V (lieBracket 𝕜 U W) x := by
  simp only [← lieBracketWithin_univ, ← contDiffWithinAt_univ] at hU hV hW ⊢
  exact leibniz_identity_lieBracketWithin hn uniqueDiffOn_univ (by simp) (mem_univ _) hU hV hW


/-!
### The pullback of vector fields in a vector space
-/

variable (𝕜) in
/-- The pullback of a vector field under a function, defined
as `(f^* V) (x) = Df(x)^{-1} (V (f x))`. If `Df(x)` is not invertible, we use the junk value `0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2552e1d8be91b5a59d4844051626c460ac83cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
