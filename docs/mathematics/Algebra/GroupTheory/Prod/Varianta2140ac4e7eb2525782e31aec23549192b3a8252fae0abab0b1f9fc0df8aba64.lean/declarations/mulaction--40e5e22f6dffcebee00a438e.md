# mulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ad6bef721cb23986ea940cacc8435b6c9476f9700fdd99d7638121f01120624",
  "kind": "instance",
  "lexical_name": "mulAction",
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
  "slug": "mulaction--40e5e22f6dffcebee00a438e",
  "source": {
    "blob": "f7884ced08a5b2abb658f5f7ebfd1f93a44cb654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40e5e22f6dffcebee00a438e73461f6adfe571f8415e8b49f1b847b8ccc71ffd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ad6bef721cb23986ea940cacc8435b6c9476f9700fdd99d7638121f01120624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulAction [Monoid M] [MulAction M α] [MulAction M β] : MulAction M (α × β) where
  mul_smul _ _ _ := by ext <;> exact mul_smul ..
  one_smul _ := by ext <;> exact one_smul ..

end Prod

/-! ### Scalar multiplication as a homomorphism -/

section BundledSMul

/-- Scalar multiplication as a multiplicative homomorphism. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Prod/Varianta2140ac4e7eb2525782e31aec23549192b3a8252fae0abab0b1f9fc0df8aba64.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7884ced08a5b2abb658f5f7ebfd1f93a44cb654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
