# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1445d4ef08c2acbac3efefb2a18db807d40a4d4839e0b04b9ec59ce17a0a6d53",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a215a617ef4c86d24fdbfaaf",
  "source": {
    "blob": "02bc82582e655798cfb6727c19deac77ccabd6ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NumeratorLiteralSnippet/Variant27eccf9d56f2a6efa804e2d7f7dc41dc5abe51d52e6ca1872fea09a923d04af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a215a617ef4c86d24fdbfaafff69e96126592865de7f5bff2d935b589b190b68",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NumeratorLiteralSnippet/Variant27eccf9d56f2a6efa804e2d7f7dc41dc5abe51d52e6ca1872fea09a923d04af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1445d4ef08c2acbac3efefb2a18db807d40a4d4839e0b04b9ec59ce17a0a6d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (z : ℂ) : HasDerivAt (correctedNumerator X)
    ((∑ n ∈ Icc 1 X, (ArithmeticFunction.moebius n : ℂ) *
      (Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) *
        (-(Real.log (n : ℝ) : ℂ)))) +
      (mobiusReciprocalSum X : ℂ) *
        (Complex.exp ((1 / 2 - z) * (Real.log (X : ℝ) : ℂ)) *
          (Real.log (X : ℝ) : ℂ))) z := correctedNumerator_hasDerivAt X z
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NumeratorLiteralSnippet/Variant27eccf9d56f2a6efa804e2d7f7dc41dc5abe51d52e6ca1872fea09a923d04af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NumeratorLiteralSnippet/Variant27eccf9d56f2a6efa804e2d7f7dc41dc5abe51d52e6ca1872fea09a923d04af6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02bc82582e655798cfb6727c19deac77ccabd6ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
