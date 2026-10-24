# topEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403a3cc2bfdb30bce0df05cac54137c1db70ac074930b92c924536108e299fdf",
  "kind": "def",
  "lexical_name": "topEquiv",
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
  "slug": "topequiv--da5d711a71baafac38a1387a",
  "source": {
    "blob": "8dc444e933091e0f8de7b5993b53978349d5b4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da5d711a71baafac38a1387ad5b04a85fd74a980c57896e4546b0a63ecc2c090",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403a3cc2bfdb30bce0df05cac54137c1db70ac074930b92c924536108e299fdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topEquiv : (⊤ : Submodule R M) ≃ₗ[R] M where
  toFun x := x
  invFun x := ⟨x, mem_top⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  left_inv _ := rfl
  right_inv _ := rfl
#align submodule.top_equiv Submodule.topEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lattice/Variantc09b4783fb53ee6e51a99e443baf60c38dcd4bd34550ba577773b2ee3738b956.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc444e933091e0f8de7b5993b53978349d5b4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
