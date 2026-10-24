# toProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97116cc8bfc2c79a119896b591952deca89518b2de977fed905c6970d817469a",
  "kind": "def",
  "lexical_name": "toProd",
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
  "slug": "toprod--1ae769d169fa75f9e98dafb4",
  "source": {
    "blob": "e06d940aa2396412dcbba58d8895f1d6810bd6c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ae769d169fa75f9e98dafb458b0548573c09036f89ae19a1fba9c4dccc60e54",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97116cc8bfc2c79a119896b591952deca89518b2de977fed905c6970d817469a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toProd : evenOdd Q₁ ᵍ⊗[R] evenOdd Q₂ →ₐ[R] CliffordAlgebra (Q₁.prod Q₂) :=
  GradedTensorProduct.lift _ _
    (CliffordAlgebra.map <| .inl _ _)
    (CliffordAlgebra.map <| .inr _ _)
    fun _i₁ _i₂ x₁ x₂ => map_mul_map_of_isOrtho_of_mem_evenOdd _ _ (QuadraticMap.IsOrtho.inl_inr) _
      _ x₁.prop x₂.prop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant063528bfe3e7ec7cd466ead90f3e1b255135a62989693d32bc4a41ae75af320f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e06d940aa2396412dcbba58d8895f1d6810bd6c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
