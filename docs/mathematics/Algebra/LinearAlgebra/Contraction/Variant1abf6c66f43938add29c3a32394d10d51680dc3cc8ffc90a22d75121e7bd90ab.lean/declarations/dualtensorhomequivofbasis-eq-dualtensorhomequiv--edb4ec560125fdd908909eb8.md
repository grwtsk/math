# dualTensorHomEquivOfBasis_eq_dualTensorHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff6e5927-a0f2-8b90-3a82-86e5ca8f97ba",
  "kind": "lemma",
  "lexical_name": "dualTensorHomEquivOfBasis_eq_dualTensorHomEquiv",
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
  "slug": "dualtensorhomequivofbasis-eq-dualtensorhomequiv--edb4ec560125fdd908909eb8",
  "source": {
    "blob": "d210e084a69630c862113256299d4d9bded7fb6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 301,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edb4ec560125fdd908909eb8489c031947afdccbf511f807bbb89d7bf8d2bb17",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6e5927-a0f2-8b90-3a82-86e5ca8f97ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma dualTensorHomEquivOfBasis_eq_dualTensorHomEquiv [DecidableEq ι] [Fintype ι]
    (b : Basis ι R M) : dualTensorHomEquivOfBasis b = dualTensorHomEquiv R M N := by
  apply LinearEquiv.toLinearMap_injective; ext; simp

end FiniteProjective

@[deprecated dualTensorHomEquivOfBasis_eq_dualTensorHomEquiv (since := "2026-08-31")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d210e084a69630c862113256299d4d9bded7fb6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
