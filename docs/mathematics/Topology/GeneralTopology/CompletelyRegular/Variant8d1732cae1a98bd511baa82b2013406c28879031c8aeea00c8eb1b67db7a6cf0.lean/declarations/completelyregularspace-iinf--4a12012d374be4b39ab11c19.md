# completelyRegularSpace_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cc20d4a-0acd-d6c6-449d-0d8431e2b6f8",
  "kind": "lemma",
  "lexical_name": "completelyRegularSpace_iInf",
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
  "slug": "completelyregularspace-iinf--4a12012d374be4b39ab11c19",
  "source": {
    "blob": "91f97dddee5dc39432fdf44eb47b44115a99d816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a12012d374be4b39ab11c19900a074fcc727afca3d814891ff1cc769233b67e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cc20d4a-0acd-d6c6-449d-0d8431e2b6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completelyRegularSpace_iInf {ι X : Type*} {t : ι → TopologicalSpace X}
    (ht : ∀ i, @CompletelyRegularSpace X (t i)) : @CompletelyRegularSpace X (⨅ i, t i) := by
  let := (⨅ i, t i) -- register this as default topological space to reduce `@`s
  rw [completelyRegularSpace_iff_isOpen]
  intro x K hK hxK
  simp_rw [← hK.mem_nhds_iff, nhds_iInf, mem_iInf, exists_finite_iff_finset,
    Finset.coe_sort_coe] at hxK; clear hK
  obtain ⟨I', V, hV, rfl⟩ := hxK
  simp only [mem_nhds_iff] at hV
  choose U hUV hU hxU using hV
  replace hU := fun (i : ↥I') =>
    @CompletelyRegularSpace.completely_regular_isOpen _ (t i) (ht i) x (U i) (hU i) (hxU i)
  clear hxU
  choose fs hfs hxfs hfsU using hU
  use I'.attach.sup fs
  constructorm* _ ∧ _
  · solve_by_elim [Continuous.finset_sup, continuous_iInf_dom]
  · simpa [show (0 : ↥I) = ⊥ from rfl] using hxfs
  · simp only [EqOn, Pi.one_apply, show (1 : ↥I) = ⊤ from rfl] at hfsU ⊢
    conv => equals ∀ x i, x ∈ (V i)ᶜ → ∃ b, fs b x = ⊤ => simp [Finset.sup_eq_top_iff]
    intro x i hxi
    specialize hfsU i (by tauto_set)
    exists i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompletelyRegular/Variant8d1732cae1a98bd511baa82b2013406c28879031c8aeea00c8eb1b67db7a6cf0.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f97dddee5dc39432fdf44eb47b44115a99d816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
