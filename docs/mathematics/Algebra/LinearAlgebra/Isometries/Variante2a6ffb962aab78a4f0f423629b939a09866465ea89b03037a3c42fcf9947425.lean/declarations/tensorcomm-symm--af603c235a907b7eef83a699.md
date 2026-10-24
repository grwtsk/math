# tensorComm_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50bf7629-3962-ae46-27fb-eea762708175",
  "kind": "lemma",
  "lexical_name": "tensorComm_symm",
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
  "slug": "tensorcomm-symm--af603c235a907b7eef83a699",
  "source": {
    "blob": "ac6b62d0f006fdb40fd46b1db02354bada3e4696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 107,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af603c235a907b7eef83a699a2323e14026dfd6eaca0fa0fb281f99ead7f5bf4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50bf7629-3962-ae46-27fb-eea762708175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma tensorComm_symm (Q₁ : QuadraticForm R M₁) (Q₂ : QuadraticForm R M₂) :
    (tensorComm Q₁ Q₂).symm = tensorComm Q₂ Q₁ :=
  rfl

end tensorComm

section tensorAssoc

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isometries/Variante2a6ffb962aab78a4f0f423629b939a09866465ea89b03037a3c42fcf9947425.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac6b62d0f006fdb40fd46b1db02354bada3e4696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
