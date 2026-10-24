# ofIsComplProdEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ffd385380e2cc22b543ed8d9bf7b4e3c5d3a69451659160182c2fd40ed6c928",
  "kind": "def",
  "lexical_name": "ofIsComplProdEquiv",
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
  "slug": "ofiscomplprodequiv--ce91813c8a68eb2f7d088aea",
  "source": {
    "blob": "2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 278,
    "path": "GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce91813c8a68eb2f7d088aea3f1dbf163c33b9ac3e38965730e0e44b1f4ae593",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ffd385380e2cc22b543ed8d9bf7b4e3c5d3a69451659160182c2fd40ed6c928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsComplProdEquiv {p q : Submodule R₁ E} (h : IsCompl p q) :
    ((p →ₗ[R₁] F) × (q →ₗ[R₁] F)) ≃ₗ[R₁] E →ₗ[R₁] F :=
  { ofIsComplProd h with
    invFun := fun φ => ⟨φ.domRestrict p, φ.domRestrict q⟩
    left_inv := fun φ ↦ by
      ext x
      · exact ofIsCompl_left_apply h x
      · exact ofIsCompl_right_apply h x
    right_inv := fun φ ↦ by
      ext x
      obtain ⟨a, b, hab, _⟩ := existsUnique_add_of_isCompl h x
      rw [← hab]; simp }

end

@[simp, nolint simpNF] -- Porting note: linter claims that LHS doesn't simplify, but it does
-- It seems the side condition `hf` is not applied by `simpNF`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Projection/Variantea210ed98daa9359c8879bc8b4eee299f65af98d9275517dcc45b44d0634e672.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b5d3bccabca45bd6a4d9a3a9a4fcbfd01ce2039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
