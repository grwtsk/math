# segment_integral_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec876056-7fd8-018e-5e14-0b8e9e08215d",
  "kind": "theorem",
  "lexical_name": "segment_integral_bounds",
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
  "slug": "segment-integral-bounds--70c9abb20270ce3683b8449e",
  "source": {
    "blob": "39d646f0accaaf75948fd2c353f23eec5f17b17f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c9abb20270ce3683b8449ecdb69439e89e6d2095910190602dd3477f3a918e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec876056-7fd8-018e-5e14-0b8e9e08215d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem segment_integral_bounds {f : ℝ → ℝ} {L a b x y : ℝ}
    (hx : 0≤x) (hxy : x≤y) (hy : y≤L)
    (hi : IntervalIntegrable f volume x y)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    a*(y-x)≤(∫ t in x..y,f t) ∧ (∫ t in x..y,f t)≤b*(y-x) := by
  constructor
  · have hh := intervalIntegral.integral_mono_on hxy
      (intervalIntegrable_const) hi
      (fun t ht => (hf t ⟨hx.trans ht.1,ht.2.trans hy⟩).1)
    simpa only [intervalIntegral.integral_const,smul_eq_mul,mul_comm] using hh
  · have hh := intervalIntegral.integral_mono_on hxy hi
      (intervalIntegrable_const)
      (fun t ht => (hf t ⟨hx.trans ht.1,ht.2.trans hy⟩).2)
    simpa only [intervalIntegral.integral_const,smul_eq_mul,mul_comm] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeEnvelope/Variant410e61b2be616e4ece754ec47f7ba19b15ee00a83447e78a31cc3ab9c96d98c9.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d646f0accaaf75948fd2c353f23eec5f17b17f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
