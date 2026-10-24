# Trivialization.contMDiffOn_symm_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8497c82-0c5a-8502-c4f0-e0774267d2d1",
  "kind": "theorem",
  "lexical_name": "Trivialization.contMDiffOn_symm_trans",
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
  "slug": "trivialization-contmdiffon-symm-trans--30ac4b0e17ad65a9c27dcbd7",
  "source": {
    "blob": "eb54446ef768f7fd34d217b063a4b43ec4cc3e0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 439,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ac4b0e17ad65a9c27dcbd719cc7126335858c499655e19c0c18a05890e6e64",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8497c82-0c5a-8502-c4f0-e0774267d2d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Trivialization.contMDiffOn_symm_trans :
    ContMDiffOn (IB.prod 𝓘(𝕜, F)) (IB.prod 𝓘(𝕜, F)) n
      (e.toLocalHomeomorph.symm ≫ₕ e'.toLocalHomeomorph) (e.target ∩ e'.target) := by
  have Hmaps : MapsTo Prod.fst (e.target ∩ e'.target) (e.baseSet ∩ e'.baseSet) := fun x hx ↦
    ⟨e.mem_target.1 hx.1, e'.mem_target.1 hx.2⟩
  rw [mapsTo_inter] at Hmaps
  -- TODO: drop `congr` #5473
  refine (contMDiffOn_fst.prod_mk
    (contMDiffOn_fst.coordChange contMDiffOn_snd Hmaps.1 Hmaps.2)).congr ?_
  rintro ⟨b, x⟩ hb
  refine Prod.ext ?_ rfl
  · have : (e.toLocalHomeomorph.symm (b, x)).1 ∈ e'.baseSet
    · simp_all only [Trivialization.mem_target, mfld_simps]
    exact (e'.coe_fst' this).trans (e.proj_symm_apply hb.1)

variable {IB e e'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb54446ef768f7fd34d217b063a4b43ec4cc3e0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
