# ValidTransition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d943293af1dd1b4a0efe18634a7f84779eac3be7512e05a1db791ac3085bb61",
  "kind": "def",
  "lexical_name": "ValidTransition",
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
  "slug": "validtransition--df648c257f432c60e7b24d37",
  "source": {
    "blob": "fb18638815ac889c258cde7dbe76ecfcd6ebea6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant382be89cf11b53a89160fc3222504c95c8bca64c94336adb865a5196cae07f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df648c257f432c60e7b24d372ee5b7034f21b636b34e7fb35ef047ebe8cbb3c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant382be89cf11b53a89160fc3222504c95c8bca64c94336adb865a5196cae07f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d943293af1dd1b4a0efe18634a7f84779eac3be7512e05a1db791ac3085bb61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ValidTransition (before : State) (intent : Intent) (after : State) : Prop :=
  Invariant before ∧
  intent.scope = before.scope ∧
  intent.baseEpoch = before.epoch ∧
  before.lastEvent < intent.eventId ∧
  0 < intent.routeGap ∧
  intent.evidencePresent = true ∧
  after.epoch = before.epoch + 1 ∧
  after.trace = before.trace + intent.delta ∧
  after.scope = before.scope ∧
  after.lastEvent = intent.eventId ∧
  after.lower = before.lower ∧
  after.upper = before.upper ∧
  Invariant after

end NoeoueueFormalGate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant382be89cf11b53a89160fc3222504c95c8bca64c94336adb865a5196cae07f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Model/Variant382be89cf11b53a89160fc3222504c95c8bca64c94336adb865a5196cae07f99.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb18638815ac889c258cde7dbe76ecfcd6ebea6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
