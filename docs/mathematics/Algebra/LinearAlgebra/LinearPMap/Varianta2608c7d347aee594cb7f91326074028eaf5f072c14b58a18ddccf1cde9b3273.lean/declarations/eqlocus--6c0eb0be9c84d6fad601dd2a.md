# eqLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9bfb1aacf8c39278952572632dbddcbc64b0a605df15d3249bdb624bd2b3d19",
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
  "slug": "eqlocus--6c0eb0be9c84d6fad601dd2a",
  "source": {
    "blob": "e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 259,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c0eb0be9c84d6fad601dd2a986329716821ed24738693bfc1de87ba2ecd0b97",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9bfb1aacf8c39278952572632dbddcbc64b0a605df15d3249bdb624bd2b3d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eqLocus (f g : E →ₛₗ.[σ] F) : Submodule R E where
  carrier := { x | ∃ (hf : x ∈ f.domain) (hg : x ∈ g.domain), f ⟨x, hf⟩ = g ⟨x, hg⟩ }
  zero_mem' := ⟨zero_mem _, zero_mem _, f.map_zero.trans g.map_zero.symm⟩
  add_mem' {x y} := fun ⟨hfx, hgx, hx⟩ ⟨hfy, hgy, hy⟩ ↦
    ⟨add_mem hfx hfy, add_mem hgx hgy, by
      simp_all [← AddMemClass.mk_add_mk, f.map_add, g.map_add]⟩
  smul_mem' c x := fun ⟨hfx, hgx, hx⟩ ↦
    ⟨smul_mem _ c hfx, smul_mem _ c hgx, by
      have {f : E →ₛₗ.[σ] F} (hfx) : (⟨c • x, smul_mem _ c hfx⟩ : f.domain) = c • ⟨x, hfx⟩ := by
        simp
      rw [this hfx, this hgx, f.map_smulₛₗ, g.map_smulₛₗ, hx]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Varianta2608c7d347aee594cb7f91326074028eaf5f072c14b58a18ddccf1cde9b3273.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
