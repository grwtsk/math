# universalEnvelopingEquivFreeAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ab25b6721d7d20efc06b9f71dbfefe84fc312f33190d5785e78f8e2f15684e6",
  "kind": "def",
  "lexical_name": "universalEnvelopingEquivFreeAlgebra",
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
  "slug": "universalenvelopingequivfreealgebra--633ba3c4cbb4676f10dfb12f",
  "source": {
    "blob": "d3f74866890b3c42f9c26d5c5e0c61c9b9c4d481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 271,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:633ba3c4cbb4676f10dfb12f77c46ed96d207bd448aca9ad80850b5a453903ef",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ab25b6721d7d20efc06b9f71dbfefe84fc312f33190d5785e78f8e2f15684e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def universalEnvelopingEquivFreeAlgebra :
    UniversalEnvelopingAlgebra R (FreeLieAlgebra R X) ≃ₐ[R] FreeAlgebra R X :=
  AlgEquiv.ofAlgHom (UniversalEnvelopingAlgebra.lift R <| FreeLieAlgebra.lift R <| FreeAlgebra.ι R)
    (FreeAlgebra.lift R <| UniversalEnvelopingAlgebra.ι R ∘ FreeLieAlgebra.of R) (by ext; simp)
    (by ext; simp)

end FreeLieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variant7d764c5191cc1a04e372b684da3b824895e07d61d80b71e0c0665ab1ba20d992.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3f74866890b3c42f9c26d5c5e0c61c9b9c4d481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
