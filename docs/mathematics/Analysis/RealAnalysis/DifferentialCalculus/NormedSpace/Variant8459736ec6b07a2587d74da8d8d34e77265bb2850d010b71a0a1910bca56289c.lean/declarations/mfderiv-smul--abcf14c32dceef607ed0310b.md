# mfderiv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75b28e43-211b-fa58-143d-084a39a0d67a",
  "kind": "lemma",
  "lexical_name": "mfderiv_smul",
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
  "slug": "mfderiv-smul--abcf14c32dceef607ed0310b",
  "source": {
    "blob": "6451c31dfa6c23e7a3354924b201e95600ffaac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 354,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abcf14c32dceef607ed0310b4f45d266731eb140fc67c7461b595f73b13aa344",
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

Occurrence: `result:75b28e43-211b-fa58-143d-084a39a0d67a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mfderiv_smul (hf : MDiffAt f x) (hg : MDiffAt g x) :
    mfderiv% (f • g) x
    = f x • (fromTangentSpace _).symm.toContinuousLinearMap ∘L
      ((fromTangentSpace (g x)).toContinuousLinearMap ∘L mfderiv% g x)
    + toSpanSingleton 𝕜 ((fromTangentSpace _).symm (g x)) ∘L
      ((fromTangentSpace (f x)).toContinuousLinearMap ∘L mfderiv% f x) :=
  (hf.hasMFDerivAt.smul hg.hasMFDerivAt).mfderiv

-- TODO: investigate inlining the proof: this lemma statement abuses defeq
/-- Given maps `f`, `g` from a manifold into a field `𝕜` and `𝕜`-vector space `V`, respectively, the
formula for the `mfderiv` (differential) of their scalar multiplication `f • g`.

Mathematically speaking the formula is `d(f • g) = f • dg + df ⊗ g`, i.e.
`mfderiv% (f • g) x = f x • mfderiv% g x + toSpanSingleton 𝕜 (g x) ∘L mfderiv% f x`,
but this doesn't typecheck because `mfderiv% (f • g) x` and `mfderiv% g x` take values in different
tangent spaces -- respectively the tangent spaces to `V` at `(f • g) x` and `g x`. Of course, both
these tangent spaces can be canonically identified with `V`.

This lemma phrases the formula using the equiv `NormedSpace.fromTangentSpace`, which provides this
canonical identification. (It would also be possible to phrase the formula without this equiv,
instead using casting and definitional abuse.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant8459736ec6b07a2587d74da8d8d34e77265bb2850d010b71a0a1910bca56289c.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6451c31dfa6c23e7a3354924b201e95600ffaac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
