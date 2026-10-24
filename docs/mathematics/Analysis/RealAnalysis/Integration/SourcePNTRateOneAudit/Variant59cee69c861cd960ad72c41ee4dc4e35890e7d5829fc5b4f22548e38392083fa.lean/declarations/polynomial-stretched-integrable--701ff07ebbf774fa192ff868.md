# polynomial_stretched_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68314403-79e2-9d66-79e5-8f7c92d215d7",
  "kind": "theorem",
  "lexical_name": "polynomial_stretched_integrable",
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
  "slug": "polynomial-stretched-integrable--701ff07ebbf774fa192ff868",
  "source": {
    "blob": "eca788c739066293dcc4c42bf4e9ab36928bb0fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant59cee69c861cd960ad72c41ee4dc4e35890e7d5829fc5b4f22548e38392083fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:701ff07ebbf774fa192ff868536abb7a963e3e7fd373bafcaf87f8ac65bf163f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant59cee69c861cd960ad72c41ee4dc4e35890e7d5829fc5b4f22548e38392083fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68314403-79e2-9d66-79e5-8f7c92d215d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_stretched_integrable (c p : ℝ) (hc : 0 < c) (hp : 0 < p) :
    IntegrableOn (fun A : ℝ ↦ A ^ 17 * Real.exp (-c * A ^ p)) (Ioi 1) := by
  have h := (integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (17 : ℝ)) (p := p) (b := c) (by norm_num) hp hc).mono_set
      (show Ioi (1 : ℝ) ⊆ Ioi 0 from fun x h ↦ show 0 < x from zero_lt_one.trans h)
  apply h.congr_fun _ measurableSet_Ioi
  intro A _
  dsimp only
  rw [show A ^ (17 : ℝ) = A ^ (17 : ℕ) from Real.rpow_natCast A 17]

/-- The three terms arising from the actual correction and the PNT split are integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant59cee69c861cd960ad72c41ee4dc4e35890e7d5829fc5b4f22548e38392083fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant59cee69c861cd960ad72c41ee4dc4e35890e7d5829fc5b4f22548e38392083fa.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eca788c739066293dcc4c42bf4e9ab36928bb0fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
