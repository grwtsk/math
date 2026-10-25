# checkModifiers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c5d7cfeb1fc694b1bdebee4a03c06f1696994ddff670f81a095694121caee07",
  "kind": "def",
  "lexical_name": "checkModifiers",
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
  "slug": "checkmodifiers--9a6c29eff6a02816f92e4a32",
  "source": {
    "blob": "95524f4693dae3016627447f92c8871548cdca73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a6c29eff6a02816f92e4a32ea92c3dea5f8be1ac3579770e4195cbeb7e308a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c5d7cfeb1fc694b1bdebee4a03c06f1696994ddff670f81a095694121caee07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkModifiers (m₁ m₂ : Modifiers) : TermElabM Unit := do
  unless m₁.isUnsafe == m₂.isUnsafe do
    throwError "cannot mix unsafe and safe definitions"
  unless m₁.isNoncomputable == m₂.isNoncomputable do
    throwError "cannot mix computable and non-computable definitions"
  unless m₁.isPartial == m₂.isPartial do
    throwError "cannot mix partial and non-partial definitions"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualDef/Variant2d76c3300c8c3963cee5cc589e2dbdda87f32fd1f096a4f8804a525910b9bb1e.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95524f4693dae3016627447f92c8871548cdca73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
