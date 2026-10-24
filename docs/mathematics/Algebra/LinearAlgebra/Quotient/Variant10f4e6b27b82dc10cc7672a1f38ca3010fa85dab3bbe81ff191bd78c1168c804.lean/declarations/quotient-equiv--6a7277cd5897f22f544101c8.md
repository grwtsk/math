# Quotient.equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:298b6ac88e1936fd19ae8aa7d865d3f88b46ddd0cfb29d246ea57eecc82e8c8b",
  "kind": "def",
  "lexical_name": "Quotient.equiv",
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
  "slug": "quotient-equiv--6a7277cd5897f22f544101c8",
  "source": {
    "blob": "05a716a2e72e22e4687a5be72b596f8a0718474c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 526,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a7277cd5897f22f544101c8452c3fb17a17395089eba5fa4ad2f105298ecc50",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:298b6ac88e1936fd19ae8aa7d865d3f88b46ddd0cfb29d246ea57eecc82e8c8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Quotient.equiv {N : Type*} [AddCommGroup N] [Module R N] (P : Submodule R M)
    (Q : Submodule R N) (f : M ≃ₗ[R] N) (hf : P.map f = Q) : (M ⧸ P) ≃ₗ[R] N ⧸ Q :=
  { P.mapQ Q (f : M →ₗ[R] N) fun x hx => hf ▸ Submodule.mem_map_of_mem hx with
    toFun := P.mapQ Q (f : M →ₗ[R] N) fun x hx => hf ▸ Submodule.mem_map_of_mem hx
    invFun :=
      Q.mapQ P (f.symm : N →ₗ[R] M) fun x hx => by
        rw [← hf, Submodule.mem_map] at hx
        obtain ⟨y, hy, rfl⟩ := hx
        simpa
    left_inv := fun x => Quotient.inductionOn' x (by simp)
    right_inv := fun x => Quotient.inductionOn' x (by simp) }
#align submodule.quotient.equiv Submodule.Quotient.equiv
#align submodule.quotient.equiv_apply Submodule.Quotient.equiv_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a716a2e72e22e4687a5be72b596f8a0718474c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
