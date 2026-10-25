# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueSums.Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.MulEquiv.twoUniqueProds_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:359a40bb-5639-2b71-c08f-dcc51d415dd7",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueSums.Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.MulEquiv.twoUniqueProds_iff",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-uniquesums-v--3f6b42b88cdc0c02b1eaff94",
  "source": {
    "blob": "afd4bc8fc72ad3c204f81773e6c78e1b71f3b917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 513,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6b42b88cdc0c02b1eaff9469449032de82684dfdb1be1846dfeb59cb984f00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:359a40bb-5639-2b71-c08f-dcc51d415dd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.UniqueSums.Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.MulEquiv.twoUniqueProds_iff (f : G ≃* H) : TwoUniqueProds G ↔ TwoUniqueProds H :=
  ⟨of_injective_mulHom f.symm f.symm.injective, of_injective_mulHom f f.injective⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant699552b39c77407eb030fc09eee781dabfdb69e5cb70d8ed9a81c535eb5598e3.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afd4bc8fc72ad3c204f81773e6c78e1b71f3b917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
