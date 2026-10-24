# covolume_eq_det_mul_measureReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c055af7a-c737-3c9b-a2db-833622978d21",
  "kind": "theorem",
  "lexical_name": "covolume_eq_det_mul_measureReal",
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
  "slug": "covolume-eq-det-mul-measurereal--f1e7495f20976c20d0d95f47",
  "source": {
    "blob": "27d6e0d0b791b553ec941145a34af57a38708e06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 110,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1e7495f20976c20d0d95f47b71c3af087195240048ac6176e103a00ea1158dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c055af7a-c737-3c9b-a2db-833622978d21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covolume_eq_det_mul_measureReal {ι : Type*} [Fintype ι] [DecidableEq ι] (b : Basis ι ℤ L)
    (b₀ : Basis ι ℝ E) :
    covolume L μ = |b₀.det ((↑) ∘ b)| * μ.real (fundamentalDomain b₀) := by
  rw [covolume_eq_measure_fundamentalDomain L μ (isAddFundamentalDomain b μ),
    measureReal_fundamentalDomain _ _ b₀,
    measureReal_congr (fundamentalDomain_ae_parallelepiped b₀ μ)]
  congr
  ext
  exact b.ofZLatticeBasis_apply ℝ L _

@[deprecated (since := "2025-04-19")]
alias covolume_eq_det_mul_measure := covolume_eq_det_mul_measureReal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant8435becabc9826359ba40e3970c5fb95d3446832d963d6b761dc58e538c3354d.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27d6e0d0b791b553ec941145a34af57a38708e06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
