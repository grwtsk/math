# actualZeta_logDerivative_pole_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:126282da-7294-3ffe-f333-6104650c7096",
  "kind": "theorem",
  "lexical_name": "actualZeta_logDerivative_pole_identity",
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
  "slug": "actualzeta-logderivative-pole-identity--a52e32d130bb5f2cab7629aa",
  "source": {
    "blob": "26b38e2912925233f60a85619c5404a17d04c0f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 113,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52e32d130bb5f2cab7629aaf26820fc5c389a542bd9f3ac1a46a1ce00997b49",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:126282da-7294-3ffe-f333-6104650c7096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeta_logDerivative_pole_identity {s : ℂ} (hs0 : s ≠ 0) (hs1 : s ≠ 1)
    (hsz : riemannZeta s ≠ 0) :
    -deriv riemannZeta s / riemannZeta s = 1 / (s - 1) -
      deriv actualZetaPoleCleared s / actualZetaPoleCleared s := by
  rw [poleCleared_deriv hs0 hs1, actualZetaPoleCleared_eq hs0 hs1]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variant1325f021b004189a735765263e70314c22f694c839b98b59e1f31e4d2f7ebe1f.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26b38e2912925233f60a85619c5404a17d04c0f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
