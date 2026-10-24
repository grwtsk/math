# log_ratio_power_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb9a3b4c-b14c-e87a-f6b8-fab371badc5b",
  "kind": "theorem",
  "lexical_name": "log_ratio_power_integral",
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
  "slug": "log-ratio-power-integral--ef17f6923c05d5805217a754",
  "source": {
    "blob": "83e1c3ee5bc44f243586d512b60b7b94d963a067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef17f6923c05d5805217a75437cb7db3b59ba743302c1398b97be32de5a56744",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9a3b4c-b14c-e87a-f6b8-fab371badc5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_ratio_power_integral (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    (∫ x : ℝ in Ioi T, Real.log (x/T)/x^(k+1)) = 1/((k : ℝ)^2*T^k) := by
  have hi := integral_Ioi_of_hasDerivAt_of_nonneg'
    (g := logMomentPrimitive k T) (l := 0)
    (fun x hx => log_moment_primitive_derivative k hk T x hT (hT.trans_le hx))
    (fun x hx => log_ratio_power_nonnegative k T x hT hx)
    (log_moment_primitive_tendsto k hk T)
  rw [hi]
  unfold logMomentPrimitive
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e1c3ee5bc44f243586d512b60b7b94d963a067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
