# iSup_range_stdBasis_le_iInf_ker_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:892b8b91-009c-07ae-a5dd-c11da1d6ef68",
  "kind": "theorem",
  "lexical_name": "iSup_range_stdBasis_le_iInf_ker_proj",
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
  "slug": "isup-range-stdbasis-le-iinf-ker-proj--60a3e2e1b7c2f0ede1b83ffe",
  "source": {
    "blob": "e5ee7fce804fdf1004b65c281aa892a32fc9eb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60a3e2e1b7c2f0ede1b83ffeb39feb014485fd7932795011885a42b487cd027a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:892b8b91-009c-07ae-a5dd-c11da1d6ef68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_range_stdBasis_le_iInf_ker_proj (I J : Set ι) (h : Disjoint I J) :
    ⨆ i ∈ I, range (stdBasis R φ i) ≤ ⨅ i ∈ J, ker (proj i : (∀ i, φ i) →ₗ[R] φ i) := by
  refine' iSup_le fun i => iSup_le fun hi => range_le_iff_comap.2 _
  simp only [←ker_comp, eq_top_iff, SetLike.le_def, mem_ker, comap_iInf, mem_iInf]
  rintro b - j hj
  rw [proj_stdBasis_ne R φ j i, zero_apply]
  rintro rfl
  exact h.le_bot ⟨hi, hj⟩
#align linear_map.supr_range_std_basis_le_infi_ker_proj LinearMap.iSup_range_stdBasis_le_iInf_ker_proj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variantd8c46979ba0dc15ea007632486aa792529f031476b10865e6b2769fb3c80e256.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5ee7fce804fdf1004b65c281aa892a32fc9eb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
