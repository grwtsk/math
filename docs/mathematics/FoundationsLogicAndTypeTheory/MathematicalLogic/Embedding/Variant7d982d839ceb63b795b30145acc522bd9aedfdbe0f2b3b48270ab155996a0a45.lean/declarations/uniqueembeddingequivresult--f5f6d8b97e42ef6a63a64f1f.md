# uniqueEmbeddingEquivResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6371317367c0f49e26b5dd70402790b34b55488d80b8b94fe89d4ed4f8a7fcd5",
  "kind": "def",
  "lexical_name": "uniqueEmbeddingEquivResult",
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
  "slug": "uniqueembeddingequivresult--f5f6d8b97e42ef6a63a64f1f",
  "source": {
    "blob": "53655a99bbfa6916262911342570e11b7cc88911",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5f6d8b97e42ef6a63a64f1fcf5289c6171c07777fa354c7a4da344d1af319f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6371317367c0f49e26b5dd70402790b34b55488d80b8b94fe89d4ed4f8a7fcd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniqueEmbeddingEquivResult {α β : Type*} [Unique α] :
    (α ↪ β) ≃ β where
  toFun f := f default
  invFun x := ⟨fun _ => x, fun _ _ _ => Subsingleton.elim _ _⟩
  left_inv _ := by
    ext x
    simp_rw [Function.Embedding.coeFn_mk]
    congr 1
    exact Subsingleton.elim _ x
  right_inv _ := by simp

end Equiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Embedding/Variant7d982d839ceb63b795b30145acc522bd9aedfdbe0f2b3b48270ab155996a0a45.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53655a99bbfa6916262911342570e11b7cc88911` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
