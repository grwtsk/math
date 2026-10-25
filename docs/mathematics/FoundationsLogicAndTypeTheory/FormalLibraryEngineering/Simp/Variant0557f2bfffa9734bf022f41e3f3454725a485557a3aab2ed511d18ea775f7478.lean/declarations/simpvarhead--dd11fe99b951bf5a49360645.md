# simpVarHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:519f5cb443975ce80b90aa2c20a31591359b4e6c3ae32d6c2bb20be1bbfe448c",
  "kind": "def",
  "lexical_name": "simpVarHead",
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
  "slug": "simpvarhead--dd11fe99b951bf5a49360645",
  "source": {
    "blob": "525107e8031f6a066c6257d60ed3e280f4c3f5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 197,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd11fe99b951bf5a49360645d2d64ca2b722d291f3df052ae7f70e1008af2746",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:519f5cb443975ce80b90aa2c20a31591359b4e6c3ae32d6c2bb20be1bbfe448c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[std_linter] def simpVarHead : Linter where
  noErrorsFound :=
    "No left-hand sides of a simp lemma has a variable as head symbol."
  errorsFound := "LEFT-HAND SIDE HAS VARIABLE AS HEAD SYMBOL.
Some simp lemmas have a variable as head symbol of the left-hand side (after whnfR):"
  test := fun declName => do
    unless ← isSimpTheorem declName do return none
    checkAllSimpTheoremInfos (← getConstInfo declName).type fun {lhs, ..} => do
    let lhs ← whnfR lhs
    let headSym := lhs.getAppFn
    unless headSym.isFVar do return none
    return m!"Left-hand side has variable as head symbol: {headSym}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant0557f2bfffa9734bf022f41e3f3454725a485557a3aab2ed511d18ea775f7478.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525107e8031f6a066c6257d60ed3e280f4c3f5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
