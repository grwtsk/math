# semilatticeInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f1be51c2a1b37e517f6620b06a8490cf7e7f8fa335b818afa50009dd3e386ce",
  "kind": "instance",
  "lexical_name": "semilatticeInf",
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
  "slug": "semilatticeinf--f470397ec90ecbc5dc08b683",
  "source": {
    "blob": "e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 277,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f470397ec90ecbc5dc08b6833aae57b7d1968bfc72a3385e133d507201f5e597",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f1be51c2a1b37e517f6620b06a8490cf7e7f8fa335b818afa50009dd3e386ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semilatticeInf : SemilatticeInf (E →ₛₗ.[σ] F) where
  le_refl f := ⟨le_refl f.domain, fun _ _ h => Subtype.ext h ▸ rfl⟩
  le_trans := fun _ _ _ ⟨fg_le, fg_eq⟩ ⟨gh_le, gh_eq⟩ =>
    ⟨le_trans fg_le gh_le, fun x _ hxz =>
      have hxy : (x : E) = inclusion fg_le x := rfl
      (fg_eq hxy).trans (gh_eq <| hxy.symm.trans hxz)⟩
  le_antisymm _ _ fg gf := eq_of_le_of_domain_eq fg (le_antisymm fg.1 gf.1)
  inf f g := ⟨f.eqLocus g, f.toFun.comp <| inclusion fun _x hx => hx.fst⟩
  le_inf := by
    intro f g h ⟨fg_le, fg_eq⟩ ⟨fh_le, fh_eq⟩
    exact ⟨fun x hx =>
      ⟨fg_le hx, fh_le hx,
      (fg_eq (x := ⟨x, hx⟩) rfl).symm.trans (fh_eq rfl)⟩,
      fun x ⟨y, yg, hy⟩ h => fg_eq h⟩
  inf_le_left f _ := ⟨fun _ hx => hx.fst, fun _ _ h => congr_arg f <| Subtype.ext <| h⟩
  inf_le_right _ g :=
    ⟨fun _ hx => hx.snd.fst, fun ⟨_, _, _, hx⟩ _ h => hx.trans <| congr_arg g <| Subtype.ext <| h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
