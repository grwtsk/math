# instLawfulOrderOrd_ofOrd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f385c5d5a46a284686fd87adecb9ee3d233fff7464de42c153fe797fd951ea43",
  "kind": "instance",
  "lexical_name": "instLawfulOrderOrd_ofOrd",
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
  "slug": "instlawfulorderord-oford--222cfaacb08db23403da4fdc",
  "source": {
    "blob": "e6ac711171abbaac8c94e0e94dd725ffbf9f9a5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:222cfaacb08db23403da4fdc87be088d176a2e9e0acefd585df4ac64dd926aaf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f385c5d5a46a284686fd87adecb9ee3d233fff7464de42c153fe797fd951ea43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public instance instLawfulOrderOrd_ofOrd (α : Type u) [Ord α] [OrientedOrd α] :
    haveI := LE.ofOrd α
    LawfulOrderOrd α :=
  letI := LE.ofOrd α
  { isLE_compare := by simp [LE.le]
    isGE_compare := by simp [LE.le, OrientedCmp.isGE_eq_isLE] }

attribute [local instance] LT.ofOrd in
/--
The `LT α` instance obtained from an `Ord α` instance is compatible with the `LE α` instance
instance if `Ord α` is compatible with it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FactoriesExtra/Variant31143e969a042d460f66eea62e6da3fa5e98fa59ce50769b4b9657238cc855a4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6ac711171abbaac8c94e0e94dd725ffbf9f9a5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
