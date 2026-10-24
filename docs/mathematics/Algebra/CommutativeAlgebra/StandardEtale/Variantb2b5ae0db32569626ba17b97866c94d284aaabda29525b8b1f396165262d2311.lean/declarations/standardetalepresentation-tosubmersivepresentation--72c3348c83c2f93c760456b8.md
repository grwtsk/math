# StandardEtalePresentation.toSubmersivePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a04c77b56972c8fc3c800ca4bae5c8f18ecf26e016f81bff1b89910028fe83e9",
  "kind": "def",
  "lexical_name": "StandardEtalePresentation.toSubmersivePresentation",
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
  "slug": "standardetalepresentation-tosubmersivepresentation--72c3348c83c2f93c760456b8",
  "source": {
    "blob": "03b41e98db7a4d6727042f12a586e0cc1c9f34c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 323,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72c3348c83c2f93c760456b8e72b21749330c10688c6d0c9617f93051fcfb30a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a04c77b56972c8fc3c800ca4bae5c8f18ecf26e016f81bff1b89910028fe83e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StandardEtalePresentation.toSubmersivePresentation :
    Algebra.SubmersivePresentation R S (Fin 2) (Fin 2) where
  __ := P.toPresentation
  map := id
  map_inj := Function.injective_id
  jacobian_isUnit := by simp [P.hasMap.2, P.hasMap.isUnit_derivative_f]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantb2b5ae0db32569626ba17b97866c94d284aaabda29525b8b1f396165262d2311.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03b41e98db7a4d6727042f12a586e0cc1c9f34c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
