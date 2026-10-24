# denseRange_toLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:502aa9d3-ba77-ba87-084e-c02fb49fbc43",
  "kind": "theorem",
  "lexical_name": "denseRange_toLimit",
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
  "slug": "denserange-tolimit--8de74bc5f956ccb7c8b1e1a0",
  "source": {
    "blob": "bc23998e6ffceb0d969face419f665964a2a9553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8de74bc5f956ccb7c8b1e1a09de00ecff78869db19ec303743ed1786b489ea98",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:502aa9d3-ba77-ba87-084e-c02fb49fbc43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem denseRange_toLimit (P : ProfiniteGrp.{u}) : DenseRange (toLimit P) := by
  apply dense_iff_inter_open.mpr
  rintro U ⟨s, hsO, hsv⟩ ⟨⟨spc, hspc⟩, uDefaultSpec⟩
  simp_rw [← hsv, Set.mem_preimage] at uDefaultSpec
  rcases (isOpen_pi_iff.mp hsO) _ uDefaultSpec with ⟨J, fJ, hJ1, hJ2⟩
  let M := iInf (fun (j : J) => j.1.1.1)
  have hM : M.Normal := Subgroup.normal_iInf_normal fun j => j.1.isNormal'
  have hMOpen : IsOpen (M : Set P) := by
    rw [Subgroup.coe_iInf]
    exact isOpen_iInter_of_finite fun i => i.1.1.isOpen'
  let m : OpenNormalSubgroup P := { M with isOpen' := hMOpen }
  rcases QuotientGroup.mk'_surjective M (spc m) with ⟨origin, horigin⟩
  use (toLimit P) origin
  refine ⟨?_, origin, rfl⟩
  rw [← hsv]
  apply hJ2
  intro a a_in_J
  let M_to_Na : m ⟶ a := (iInf_le (fun (j : J) => j.1.1.1) ⟨a, a_in_J⟩).hom
  rw [← (P.toLimit origin).property M_to_Na]
  change (P.toFiniteQuotientFunctor.map M_to_Na) (QuotientGroup.mk' M origin) ∈ _
  rw [horigin]
  exact Set.mem_of_eq_of_mem (hspc M_to_Na) (hJ1 a a_in_J).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant905a9f432fff4bb32de45001fe09f1797486ec5bdfab79e2da9cf5ab909b1415.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc23998e6ffceb0d969face419f665964a2a9553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
