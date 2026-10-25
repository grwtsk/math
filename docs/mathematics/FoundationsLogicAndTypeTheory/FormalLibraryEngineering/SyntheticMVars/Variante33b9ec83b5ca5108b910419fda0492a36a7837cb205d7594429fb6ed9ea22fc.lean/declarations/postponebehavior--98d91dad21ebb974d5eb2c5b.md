# PostponeBehavior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:850230a27945fb0f619f11a1edc273ebcb79ff19e33b5550f0ccda0bc72f8bc9",
  "kind": "inductive",
  "lexical_name": "PostponeBehavior",
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
  "slug": "postponebehavior--98d91dad21ebb974d5eb2c5b",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98d91dad21ebb974d5eb2c5b0a7bb6cf60511605836380afd82a8e1da43531f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:850230a27945fb0f619f11a1edc273ebcb79ff19e33b5550f0ccda0bc72f8bc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PostponeBehavior where
  /--
  Any kind of pending synthetic metavariable can be postponed.
  Universe constrains may also be postponed.
  -/
  | yes
  /--
  Pending synthetic metavariables cannot be postponed.
  -/
  | no
  /--
  Synthetic metavariables associated with type class resolution can be postponed.
  Motivation: this kind of metavariable are not synthetic opaque, and can be assigned by `isDefEq`.
  Universe constraints can also be postponed.
  -/
  | «partial»
  deriving Inhabited, Repr, BEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
