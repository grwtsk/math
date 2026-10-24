# unitAddCircle_coe_eq_iff_integer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92fc8f07-72ba-1345-f61a-ff9f5e584cdd",
  "kind": "theorem",
  "lexical_name": "unitAddCircle_coe_eq_iff_integer",
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
  "slug": "unitaddcircle-coe-eq-iff-integer--5ee53a6f31f5171448f0751f",
  "source": {
    "blob": "ee24cd3fb1e15518edd12799ec4f10dd52967aad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee53a6f31f5171448f0751f746a9cdb83a7b534393c7dc01b450ad61fa4c850",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92fc8f07-72ba-1345-f61a-ff9f5e584cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitAddCircle_coe_eq_iff_integer (θ φ : ℝ) :
    (θ : UnitAddCircle) = (φ : UnitAddCircle) ↔
      ∃ n : ℤ, θ = φ + n := by
  constructor
  · intro h
    have hz : θ - φ ∈ AddSubgroup.zmultiples (1 : ℝ) := by
      exact (QuotientAddGroup.eq_iff_sub_mem).mp h
    rcases hz with ⟨n, hn⟩
    refine ⟨n, ?_⟩
    have hn' : θ - φ = (n : ℝ) := by
      simpa using hn.symm
    linarith
  · rintro ⟨n, hn⟩
    apply (QuotientAddGroup.eq_iff_sub_mem).mpr
    change θ - φ ∈ AddSubgroup.zmultiples (1 : ℝ)
    refine ⟨n, ?_⟩
    simp [hn]

/-- Complex phase equality is exactly equality in the actual
UnitAddCircle quotient, with 2π normalization unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee24cd3fb1e15518edd12799ec4f10dd52967aad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
