# actual_cosh_envelope_le_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a471bc73-f061-cdf1-937d-4a9f61a3b76d",
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
  "slug": "actual-cosh-envelope-le-endpoint--f4962623e43d6562dd37f6da",
  "source": {
    "blob": "0a51731452af0799ff5633268334ba196f95dacf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant391a37e785f64e12e783dcae77fb2e423af3df982229058367239e9a2ff70fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4962623e43d6562dd37f6daec8d8bb5f135d884a8394225515f47decea943bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant391a37e785f64e12e783dcae77fb2e423af3df982229058367239e9a2ff70fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a471bc73-f061-cdf1-937d-4a9f61a3b76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–37.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant391a37e785f64e12e783dcae77fb2e423af3df982229058367239e9a2ff70fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiveModeCoshEnvelope/Variant391a37e785f64e12e783dcae77fb2e423af3df982229058367239e9a2ff70fc5.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a51731452af0799ff5633268334ba196f95dacf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
