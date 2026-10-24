# constantInverseSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8984044b4f254ed7e6746a540d8f5a4c36565d932b98957f70f7cd598ee725",
  "kind": "def",
  "lexical_name": "constantInverseSystem",
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
  "slug": "constantinversesystem--dd82c3beab1cb6b437612d25",
  "source": {
    "blob": "f16394e9e7fe8bcffa3cd37374c97fb2350d3f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd82c3beab1cb6b437612d257e0a8ee7a8624dc1841a01e8ce2c316eb8156c73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a8984044b4f254ed7e6746a540d8f5a4c36565d932b98957f70f7cd598ee725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantInverseSystem (N : ℕ) (G : Type) [Group G] [Fintype G] : FiniteInverseSystem N where
  Stage _ := G
  group _ := inferInstance
  finite _ := inferInstance
  restrict _ _ _ := MonoidHom.id G
  restrict_self _ _ := rfl
  restrict_comp _ _ _ _ _ _ := rfl

/-- Restricting an actual final-stage observation determines a finite section. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16394e9e7fe8bcffa3cd37374c97fb2350d3f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
