# fderiv_apply_lieBracket_of_isSymmSndFDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c65088e-8a9d-dcfe-24cd-e302eaf907c0",
  "kind": "lemma",
  "lexical_name": "fderiv_apply_lieBracket_of_isSymmSndFDerivAt",
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
  "slug": "fderiv-apply-liebracket-of-issymmsndfderivat--de81ed597243ff372031a27f",
  "source": {
    "blob": "e2552e1d8be91b5a59d4844051626c460ac83cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 242,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de81ed597243ff372031a27f3b3d38a21fa31fcc7cd02b2ed90cf8edd85b1633",
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

Occurrence: `result:3c65088e-8a9d-dcfe-24cd-e302eaf907c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderiv_apply_lieBracket_of_isSymmSndFDerivAt {f : E → F}
    (hf : ContDiffAt 𝕜 2 f x) (hsymm : IsSymmSndFDerivAt 𝕜 f x)
    (hW : DifferentiableAt 𝕜 W x) (hV : DifferentiableAt 𝕜 V x) :
    fderiv 𝕜 f x (lieBracket 𝕜 V W x) =
      fderiv 𝕜 (fun x ↦ fderiv 𝕜 f x (W x)) x (V x) -
        fderiv 𝕜 (fun x ↦ fderiv 𝕜 f x (V x)) x (W x) := by
  simp only [← fderivWithin_univ, ← lieBracketWithin_univ, ← contDiffWithinAt_univ,
    ← isSymmSndFDerivWithinAt_univ, ← differentiableWithinAt_univ] at *
  exact fderivWithin_apply_lieBracket_of_isSymmSndFDerivWithinAt hf hsymm (by simp) (by simp)
    hW hV

/-- The differentiation operator along `[W, V]`
is the commutator of the differentiation operators along `W` and `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variantf7368afb3eb246bfe9cdce6615b991a38ca8b7070b601ea8bb0851dc27499d45.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2552e1d8be91b5a59d4844051626c460ac83cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
