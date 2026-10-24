# eqLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:439245b915c2058be6443a3504475ebeb299fc8eb28c50a65673659562ebfa8c",
  "kind": "def",
  "lexical_name": "eqLocus",
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
  "slug": "eqlocus--78f26be65e379a3914cb31fc",
  "source": {
    "blob": "714240dc1f4aac388a5a0264cacd1d5d1f4d3f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78f26be65e379a3914cb31fca0a0f083aa7fac94937de58b4c57380fa3581c18",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:439245b915c2058be6443a3504475ebeb299fc8eb28c50a65673659562ebfa8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eqLocus (f g : E →ₗ.[R] F) : Submodule R E where
  carrier := { x | ∃ (hf : x ∈ f.domain) (hg : x ∈ g.domain), f ⟨x, hf⟩ = g ⟨x, hg⟩ }
  zero_mem' := ⟨zero_mem _, zero_mem _, f.map_zero.trans g.map_zero.symm⟩
  add_mem' {x y} := fun ⟨hfx, hgx, hx⟩ ⟨hfy, hgy, hy⟩ ↦
    ⟨add_mem hfx hfy, add_mem hgx hgy, by
      simp_all [← AddMemClass.mk_add_mk, f.map_add, g.map_add]⟩
  smul_mem' c x := fun ⟨hfx, hgx, hx⟩ ↦
    ⟨smul_mem _ c hfx, smul_mem _ c hgx, by
      have {f : E →ₗ.[R] F} (hfx) : (⟨c • x, smul_mem _ c hfx⟩ : f.domain) = c • ⟨x, hfx⟩ := by simp
      rw [this hfx, this hgx, f.map_smul, g.map_smul, hx]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714240dc1f4aac388a5a0264cacd1d5d1f4d3f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
