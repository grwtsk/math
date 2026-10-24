# fromTangentSpace_mfderiv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66f9cf05-c2b1-bf30-9986-5c4267c20207",
  "kind": "lemma",
  "lexical_name": "fromTangentSpace_mfderiv_smul",
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
  "slug": "fromtangentspace-mfderiv-smul--edefbc129ddf507fb96ad5e7",
  "source": {
    "blob": "6451c31dfa6c23e7a3354924b201e95600ffaac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 375,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edefbc129ddf507fb96ad5e7454be446a91cc37be35a35f0a09a3f48a3da9d70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66f9cf05-c2b1-bf30-9986-5c4267c20207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma fromTangentSpace_mfderiv_smul (hf : MDiffAt f x) (hg : MDiffAt g x) :
    (fromTangentSpace ((f • g) x)).toContinuousLinearMap ∘L mfderiv% (f • g) x
    = f x • (fromTangentSpace _).toContinuousLinearMap ∘L mfderiv% g x
    + toSpanSingleton 𝕜 (g x) ∘L (fromTangentSpace _).toContinuousLinearMap ∘L mfderiv% f x := by
  rw [mfderiv_smul hf hg]
  rfl

-- TODO: investigate inlining the proof: this lemma statement abuses defeq
/-- Given maps `f`, `g` from a manifold into a field `𝕜` and `𝕜`-vector space `V`, respectively, the
formula for the `mfderiv` (differential) of their scalar multiplication `f • g`.

Mathematically speaking the formula is `d(f • g) = f • dg + df ⊗ g`, but to get it to typecheck
we need a phrasing involving the canonical identification `NormedSpace.fromTangentSpace` between
the vector space `V` and the tangent space to this vector space at any point. This is because two
different tangent spaces (at `(f • g) x` and `g x`) appear in the equation.

This is a defeq variant of the main lemma `fromTangentSpace_mfderiv_smul`, in which we work in the
tangent space at `f x • g x` (the simp-normal form) rather than at `(f • g) x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6451c31dfa6c23e7a3354924b201e95600ffaac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
