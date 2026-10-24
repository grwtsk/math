# tensorRId_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:790b35c7-73b0-6bd4-6858-a2bb8bc27e32",
  "kind": "lemma",
  "lexical_name": "tensorRId_symm_apply",
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
  "slug": "tensorrid-symm-apply--08019d4c9f596eb4a6a5c55a",
  "source": {
    "blob": "56e303222edcd1f7dabf0e779c8fb878b6c1a5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 188,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08019d4c9f596eb4a6a5c55a1b23af32eb4ac624ed9a9d2ac1a82bb39660c9ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:790b35c7-73b0-6bd4-6858-a2bb8bc27e32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma tensorRId_symm_apply (Q₁ : QuadraticForm R M₁) (x : M₁) :
    (tensorRId Q₁).symm x = (TensorProduct.rid R M₁).symm x :=
  rfl

end tensorRId

section tensorLId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometries/Variant276b86e834924ee0bb5088ec81d488ea1ba103408144a2d5ee23bd7ea7b7804d.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e303222edcd1f7dabf0e779c8fb878b6c1a5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
