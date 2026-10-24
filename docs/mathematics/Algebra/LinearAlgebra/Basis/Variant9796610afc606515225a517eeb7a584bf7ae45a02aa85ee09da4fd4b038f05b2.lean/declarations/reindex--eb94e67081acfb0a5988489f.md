# reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea23e2790b527e72e00d2f06fceccb2f3054f035f2a478d0a83bba8d17c53c18",
  "kind": "def",
  "lexical_name": "reindex",
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
  "slug": "reindex--eb94e67081acfb0a5988489f",
  "source": {
    "blob": "7f0f93f765be1ad54a5df2e04ab81a44e97ccef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb94e67081acfb0a5988489fe58ef8115e714e03bfa62ec8b89c252ecf470a7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea23e2790b527e72e00d2f06fceccb2f3054f035f2a478d0a83bba8d17c53c18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reindex (e : ι ≃ ι') : AffineBasis ι' k P :=
  ⟨b ∘ e.symm, b.ind.comp_embedding e.symm.toEmbedding, by
    rw [e.symm.surjective.range_comp]
    exact b.3⟩
#align affine_basis.reindex AffineBasis.reindex

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f0f93f765be1ad54a5df2e04ab81a44e97ccef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
