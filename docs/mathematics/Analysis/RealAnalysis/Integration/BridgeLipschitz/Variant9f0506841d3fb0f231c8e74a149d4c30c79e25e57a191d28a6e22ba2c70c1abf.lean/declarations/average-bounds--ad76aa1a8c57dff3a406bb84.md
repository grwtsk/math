# average_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af7ddd23-b878-826c-ba51-563239a08bf8",
  "kind": "theorem",
  "lexical_name": "average_bounds",
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
  "slug": "average-bounds--ad76aa1a8c57dff3a406bb84",
  "source": {
    "blob": "e395408639a2c994510006eed3efb4e8843867fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 11,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad76aa1a8c57dff3a406bb84ec64ba724ed7a3feeb18cf2e33efde43a68cf246",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7ddd23-b878-826c-ba51-563239a08bf8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem average_bounds {f : ℝ → ℝ} {L a b : ℝ} (hL : 0<L)
    (hi : IntervalIntegrable f volume 0 L)
    (hf : ∀ t∈Icc (0:ℝ) L,a≤f t ∧ f t≤b) :
    a≤(∫ t in 0..L,f t)/L ∧ (∫ t in 0..L,f t)/L≤b := by
  have hh := segment_integral_bounds (L:=L) (a:=a) (b:=b)
    (by norm_num : (0:ℝ)≤0) hL.le le_rfl hi hf
  constructor
  · apply (le_div_iff₀ hL).mpr
    simpa only [sub_zero] using hh.1
  · apply (div_le_iff₀ hL).mpr
    simpa only [sub_zero] using hh.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeLipschitz/Variant9f0506841d3fb0f231c8e74a149d4c30c79e25e57a191d28a6e22ba2c70c1abf.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e395408639a2c994510006eed3efb4e8843867fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
