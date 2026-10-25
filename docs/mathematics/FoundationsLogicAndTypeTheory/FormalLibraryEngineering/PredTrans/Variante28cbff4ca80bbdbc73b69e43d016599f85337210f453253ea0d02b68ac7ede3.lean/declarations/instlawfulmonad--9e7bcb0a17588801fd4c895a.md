# instLawfulMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b69f1e9284d04ec8bd96b52a8353293e20d3282225968419636c979c6a877cbc",
  "kind": "instance",
  "lexical_name": "instLawfulMonad",
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
  "slug": "instlawfulmonad--9e7bcb0a17588801fd4c895a",
  "source": {
    "blob": "af7e1ad75cfd850648f3e46a0ba1cd0fba0bb336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e7bcb0a17588801fd4c895a24be2ec2103509d89e1c1b9ab73ae22ac11180b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b69f1e9284d04ec8bd96b52a8353293e20d3282225968419636c979c6a877cbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLawfulMonad : LawfulMonad (PredTrans ps) := by
  apply LawfulMonad.mk' _
  all_goals (intros; ext Q; simp)

/--
Adds the ability to make assertions about a state of type `σ` to a predicate transformer with
postcondition shape `ps`, resulting in postcondition shape `.arg σ ps`. This is done by
interpreting `StateT σ (PredTrans ps) α` into `PredTrans (.arg σ ps) α`.

This can be used to for all kinds of state-like effects, including reader effects or append-only
states, by interpreting them as states.
-/
-- Think: modifyGetM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variante28cbff4ca80bbdbc73b69e43d016599f85337210f453253ea0d02b68ac7ede3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af7e1ad75cfd850648f3e46a0ba1cd0fba0bb336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
