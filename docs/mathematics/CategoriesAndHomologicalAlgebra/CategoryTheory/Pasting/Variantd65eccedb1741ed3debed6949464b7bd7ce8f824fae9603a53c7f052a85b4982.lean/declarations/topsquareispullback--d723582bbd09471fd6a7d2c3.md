# topSquareIsPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2837158eb96ca8c765f916ce8ccfd2881d405bd7ec58e2dc5d04d05d7bb575bd",
  "kind": "def",
  "lexical_name": "topSquareIsPullback",
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
  "slug": "topsquareispullback--d723582bbd09471fd6a7d2c3",
  "source": {
    "blob": "6790398f308afac9f4b482be7aad4c8f1e5e512d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d723582bbd09471fd6a7d2c3ac9361b85013bcc4ab2e8b5c8422c7d17cfbb88c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2837158eb96ca8c765f916ce8ccfd2881d405bd7ec58e2dc5d04d05d7bb575bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topSquareIsPullback (H₁ : IsLimit t₁) (H₂ : IsLimit (t₁.pasteVert t₂ hi₂)) : IsLimit t₂ :=
  PullbackCone.isLimitOfFlip
    (leftSquareIsPullback _ hi₂ (PullbackCone.flipIsLimit H₁) (PullbackCone.flipIsLimit H₂))

/-- Given that the bottom square is a pullback, the pasted square is a pullback iff the top
square is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variantd65eccedb1741ed3debed6949464b7bd7ce8f824fae9603a53c7f052a85b4982.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6790398f308afac9f4b482be7aad4c8f1e5e512d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
