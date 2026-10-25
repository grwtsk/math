# CompSource.flatten

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:112508d29e74a7684d8d51e84c4819f70d631844753eac6a8f7abfae2983929e",
  "kind": "def",
  "lexical_name": "CompSource.flatten",
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
  "slug": "compsource-flatten--393ac14ab82cfb18c7e0b8d4",
  "source": {
    "blob": "5a5dbce939fea364900c3d3fe5f8bf23fe88d591",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:393ac14ab82cfb18c7e0b8d418a776c68d2259adae0af76608de3f56ba340da8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:112508d29e74a7684d8d51e84c4819f70d631844753eac6a8f7abfae2983929e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CompSource.flatten : CompSource → Std.HashMap Nat Nat
  | (CompSource.assump n) => (∅ : Std.HashMap Nat Nat).insert n 1
  | (CompSource.add c1 c2) =>
      (CompSource.flatten c1).mergeWith (fun _ b b' => b + b') (CompSource.flatten c2)
  | (CompSource.scale n c) => (CompSource.flatten c).mapVal (fun _ v => v * n)

/-- Formats a `CompSource` for printing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant2cba41962deba72be501a3709cbdf8a094adb9bb364a7066e2e8cefeff8e2c6d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5dbce939fea364900c3d3fe5f8bf23fe88d591` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
