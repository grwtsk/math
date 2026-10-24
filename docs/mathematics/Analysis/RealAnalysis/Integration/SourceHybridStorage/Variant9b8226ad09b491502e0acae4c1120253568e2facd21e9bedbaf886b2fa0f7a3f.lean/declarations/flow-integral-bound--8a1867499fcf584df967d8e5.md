# flow_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51087865-6104-37b9-f654-cea0dba05bc7",
  "kind": "theorem",
  "lexical_name": "flow_integral_bound",
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
  "slug": "flow-integral-bound--8a1867499fcf584df967d8e5",
  "source": {
    "blob": "2752fc911e4490f46e950968e3ccbea5a65c7d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a1867499fcf584df967d8e58915b3ab14648bf64718850093bacc2c71eec6a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51087865-6104-37b9-f654-cea0dba05bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flow_integral_bound (S f e Sd : ℝ → ℝ) (a b : ℝ) (hab : a ≤ b)
    (hS : ∀ s ∈ uIcc a b, HasDerivAt S (Sd s) s)
    (hf : IntervalIntegrable f volume a b)
    (hd : IntervalIntegrable Sd volume a b)
    (he : IntervalIntegrable e volume a b)
    (hlocal : ∀ s ∈ Icc a b, f s + Sd s ≤ e s) :
    (∫ s in a..b, f s) + S b - S a ≤ ∫ s in a..b, e s := by
  have hft := intervalIntegral.integral_eq_sub_of_hasDerivAt hS hd
  have hi := intervalIntegral.integral_mono_on hab (hf.add hd) he hlocal
  rw [intervalIntegral.integral_add hf hd, hft] at hi
  linarith only [hi]

/-- Flow costs telescope with signed event costs, without a common event dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2752fc911e4490f46e950968e3ccbea5a65c7d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
