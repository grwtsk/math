# integral_shift_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edd9d33e-021e-eac1-89e1-444dfd181175",
  "kind": "theorem",
  "lexical_name": "integral_shift_Ioi",
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
  "slug": "integral-shift-ioi--0382e3a83a029cf7512e0233",
  "source": {
    "blob": "3daa40503fd890af176cfad6c00eab4a107e6c4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant9d5319b281ceea453c541393408c5fdaf8f04f0594e1fca22d3063dcce4ff721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0382e3a83a029cf7512e023314b026cbd9711450c8df3a05ccdd05dd52d8b711",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant9d5319b281ceea453c541393408c5fdaf8f04f0594e1fca22d3063dcce4ff721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edd9d33e-021e-eac1-89e1-444dfd181175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_shift_Ioi (f : ℝ → ℝ) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), f (s + r)) = ∫ t in Ioi s, f t := by
  have h := integral_add_left_eq_self ((Ioi s).indicator f) s (μ := volume)
  rw [integral_indicator measurableSet_Ioi] at h
  rw [← h, ← integral_indicator measurableSet_Ioi]
  apply integral_congr_ae
  filter_upwards [] with r
  simp only [indicator_apply, mem_Ioi, lt_add_iff_pos_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant9d5319b281ceea453c541393408c5fdaf8f04f0594e1fca22d3063dcce4ff721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransport/Variant9d5319b281ceea453c541393408c5fdaf8f04f0594e1fca22d3063dcce4ff721.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa40503fd890af176cfad6c00eab4a107e6c4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
