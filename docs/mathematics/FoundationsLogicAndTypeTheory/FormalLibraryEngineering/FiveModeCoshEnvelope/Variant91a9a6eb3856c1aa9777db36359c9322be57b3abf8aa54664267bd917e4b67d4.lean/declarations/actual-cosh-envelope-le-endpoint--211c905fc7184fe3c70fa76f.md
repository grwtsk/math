# actual_cosh_envelope_le_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fa0e2db-64d0-f11a-d1bd-e5e9faedd3f5",
  "kind": "theorem",
  "lexical_name": "actual_cosh_envelope_le_endpoint",
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
  "slug": "actual-cosh-envelope-le-endpoint--211c905fc7184fe3c70fa76f",
  "source": {
    "blob": "06201a94305dca59d74090b72789436e2e91ce47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant91a9a6eb3856c1aa9777db36359c9322be57b3abf8aa54664267bd917e4b67d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:211c905fc7184fe3c70fa76fdd62d3b3264b089779c27178fc1944fc0e183f54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant91a9a6eb3856c1aa9777db36359c9322be57b3abf8aa54664267bd917e4b67d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa0e2db-64d0-f11a-d1bd-e5e9faedd3f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cosh_envelope_le_endpoint (A : ℝ) (hA : 1 ≤ A) :
    4 * Real.cosh (A/2)^2 / A^9 ≤ endpointEnvelope A := by
  have hpos : 0 < A^9 := by positivity
  unfold endpointEnvelope
  apply (div_le_div_iff₀ hpos hpos).2
  have he : 4 * Real.cosh (A/2)^2 = Real.exp A + 2 + Real.exp (-A) := by
    rw [Real.cosh_eq]
    have hp : Real.exp (A/2)^2 = Real.exp A := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hn : Real.exp (-(A/2))^2 = Real.exp (-A) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hm : Real.exp (A/2) * Real.exp (-(A/2)) = 1 := by
      rw [← Real.exp_add]
      simp
    nlinarith
  have hn : Real.exp (-A) ≤ 1 := (Real.exp_le_one_iff).2 (by linarith)
  rw [he]
  nlinarith

/-- The original finite envelope is bounded for every real scale, including
both endpoints. It has no all-scale boundedness conclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant91a9a6eb3856c1aa9777db36359c9322be57b3abf8aa54664267bd917e4b67d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant91a9a6eb3856c1aa9777db36359c9322be57b3abf8aa54664267bd917e4b67d4.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06201a94305dca59d74090b72789436e2e91ce47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
