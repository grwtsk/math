# coreConstructorMatcher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10c11b07976f1a1568fdaff4a47bab4aa5d0905e535e65d81b74b564a0420d5b",
  "kind": "def",
  "lexical_name": "coreConstructorMatcher",
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
  "slug": "coreconstructormatcher--b843822e9525bc057a23616b",
  "source": {
    "blob": "39dc5a266abbe4032269d23477af1eff0c13bf7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b843822e9525bc057a23616b746e577bee92eb1d34dcf4a0d876098f9e41f092",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10c11b07976f1a1568fdaff4a47bab4aa5d0905e535e65d81b74b564a0420d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coreConstructorMatcher (e : Q(Prop)) : MetaM Bool :=
  match e with
  | ~q(_ ∧ _) => pure true
  | ~q(_ ↔ _) => pure true
  | ~q(True) => pure true
  | _ => pure false

/-- Matches propositions where we want to apply the `cases` tactic
in the core loop of `tauto`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variant91cab1642b3ca7703b4d428fa73d4cafcf290f157ada1931c4c15816ea33e9e1.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39dc5a266abbe4032269d23477af1eff0c13bf7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
