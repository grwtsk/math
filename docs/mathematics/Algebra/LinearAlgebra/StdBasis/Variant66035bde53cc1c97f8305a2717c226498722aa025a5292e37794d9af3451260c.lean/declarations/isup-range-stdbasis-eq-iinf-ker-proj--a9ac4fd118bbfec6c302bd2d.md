# iSup_range_stdBasis_eq_iInf_ker_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ca0fbee9ef294b28199b942bbbc15c260428a8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8f25ff1-f9e2-93dd-4b7c-50ebdc973a5c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65615a37-9add-13b3-564c-6819b4db6c0a",
  "kind": "theorem",
  "lexical_name": "iSup_range_stdBasis_eq_iInf_ker_proj",
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
  "slug": "isup-range-stdbasis-eq-iinf-ker-proj--a9ac4fd118bbfec6c302bd2d",
  "source": {
    "blob": "ca0fbee9ef294b28199b942bbbc15c260428a8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9ac4fd118bbfec6c302bd2dc538adb7d8b16daf45f291ff0826e167e08d3bb9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65615a37-9add-13b3-564c-6819b4db6c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_range_stdBasis_eq_iInf_ker_proj {I J : Set ι} (hd : Disjoint I J)
    (hu : Set.univ ⊆ I ∪ J) (hI : Set.Finite I) :
    ⨆ i ∈ I, range (stdBasis R φ i) = ⨅ i ∈ J, ker (proj i : (∀ i, φ i) →ₗ[R] φ i) := by
  refine' le_antisymm (iSup_range_stdBasis_le_iInf_ker_proj _ _ _ _ hd) _
  have : Set.univ ⊆ ↑hI.toFinset ∪ J := by rwa [hI.coe_toFinset]
  refine' le_trans (iInf_ker_proj_le_iSup_range_stdBasis R φ this) (iSup_mono fun i => _)
  rw [Set.Finite.mem_toFinset]
#align linear_map.supr_range_std_basis_eq_infi_ker_proj LinearMap.iSup_range_stdBasis_eq_iInf_ker_proj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant66035bde53cc1c97f8305a2717c226498722aa025a5292e37794d9af3451260c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0fbee9ef294b28199b942bbbc15c260428a8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
