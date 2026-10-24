# actionDiagonalSucc_hom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69d80437-9208-fdbe-2bc9-b0373453b110",
  "kind": "theorem",
  "lexical_name": "actionDiagonalSucc_hom_apply",
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
  "slug": "actiondiagonalsucc-hom-apply--274756b76414b3c8cabad1da",
  "source": {
    "blob": "e6b9161bb7b60f042c48cf598413a443784ba528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:274756b76414b3c8cabad1dadc06264961bdf8393f8174f0c8bad5596c489dba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69d80437-9208-fdbe-2bc9-b0373453b110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actionDiagonalSucc_hom_apply {G : Type u} [Group G] {n : ℕ} (f : Fin (n + 1) → G) :
    (actionDiagonalSucc G n).hom.hom f = (f 0, fun i => (f (Fin.castSucc i))⁻¹ * f i.succ) := by
  induction' n with n hn
  · exact Prod.ext rfl (funext fun x => Fin.elim0 x)
  · refine' Prod.ext rfl (funext fun x => _)
/- Porting note: broken proof was
    · dsimp only [actionDiagonalSucc]
      simp only [Iso.trans_hom, comp_hom, types_comp_apply, diagonalSucc_hom_hom,
        leftRegularTensorIso_hom_hom, tensorIso_hom, mkIso_hom_hom, Equiv.toIso_hom,
        Action.tensorHom, Equiv.piFinSuccAboveEquiv_symm_apply, tensor_apply, types_id_apply,
        tensor_rho, MonoidHom.one_apply, End.one_def, hn fun j : Fin (n + 1) => f j.succ,
        Fin.insertNth_zero']
      refine' Fin.cases (Fin.cons_zero _ _) (fun i => _) x
      · simp only [Fin.cons_succ, mul_left_inj, inv_inj, Fin.castSucc_fin_succ] -/
    · dsimp [actionDiagonalSucc]
      erw [hn (fun (j : Fin (n + 1)) => f j.succ)]
      exact Fin.cases rfl (fun i => rfl) x
set_option linter.uppercaseLean3 false in
#align group_cohomology.resolution.Action_diagonal_succ_hom_apply GroupCohomology.Resolution.actionDiagonalSucc_hom_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b9161bb7b60f042c48cf598413a443784ba528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
