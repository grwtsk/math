# integralBridge_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40f00145-aa11-1f5c-75c0-40558d77b995",
  "kind": "theorem",
  "lexical_name": "integralBridge_sub",
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
  "slug": "integralbridge-sub--2307dc8058fee812862fe3ba",
  "source": {
    "blob": "f7de31ae8718e922a70841b3ff61970568d7a0b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2307dc8058fee812862fe3ba42f12095c66903893bfd2e5ead41f17e5c148222",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40f00145-aa11-1f5c-75c0-40558d77b995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralBridge_sub {f : ℝ → ℝ} {L s t : ℝ}
    (hi : ∀ x y : ℝ,IntervalIntegrable f volume x y) :
    integralBridge f L t-integralBridge f L s =
      (∫ u in s..t,f u)-(t-s)*((∫ u in 0..L,f u)/L) := by
  have he := intervalIntegral.integral_interval_sub_left (hi 0 t) (hi 0 s)
  unfold integralBridge
  rw [show (∫ u in 0..t,f u)-(t/L)*(∫ u in 0..L,f u)-
      ((∫ u in 0..s,f u)-(s/L)*(∫ u in 0..L,f u)) =
      ((∫ u in 0..t,f u)-(∫ u in 0..s,f u))-
        (t-s)*((∫ u in 0..L,f u)/L) by ring]
  rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variantb664d9459e82073f0f9dfb8a10bb82bf1957ad7bb2ac65a8fd92739e9d5ea8fb.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7de31ae8718e922a70841b3ff61970568d7a0b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
