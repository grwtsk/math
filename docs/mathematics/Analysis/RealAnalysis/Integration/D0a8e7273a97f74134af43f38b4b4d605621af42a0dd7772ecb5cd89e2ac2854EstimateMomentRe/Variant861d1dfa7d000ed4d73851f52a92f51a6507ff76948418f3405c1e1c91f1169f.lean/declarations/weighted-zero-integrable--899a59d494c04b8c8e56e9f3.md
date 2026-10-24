# weighted_zero_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2375834a-9c7e-8917-cb5f-600088204d6f",
  "kind": "theorem",
  "lexical_name": "weighted_zero_integrable",
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
  "slug": "weighted-zero-integrable--899a59d494c04b8c8e56e9f3",
  "source": {
    "blob": "1ebee20f65394910045cc771371c68532ed3f9d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899a59d494c04b8c8e56e9f360bd2771fa279c017676a6e890bd51024fff048e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2375834a-9c7e-8917-cb5f-600088204d6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_zero_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F) :
    Integrable (fun t => Real.exp (t / 2) * F t) := by
  have hc := hF.1
  exact
    ((show Continuous (fun t : ℝ => Real.exp (t / 2) * F t) by
      fun_prop).integrable_of_hasCompactSupport hF.2.1.mul_left)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ebee20f65394910045cc771371c68532ed3f9d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
