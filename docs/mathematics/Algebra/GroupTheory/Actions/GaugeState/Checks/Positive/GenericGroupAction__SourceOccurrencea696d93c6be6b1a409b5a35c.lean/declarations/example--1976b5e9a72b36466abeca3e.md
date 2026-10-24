# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b588117f7df604404fd473d6e5b113845bdf002251af61a885ed16514cbe3cc8",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--1976b5e9a72b36466abeca3e",
  "source": {
    "blob": "e1d87512e534adb3dd23a38b5f215ecb223b0ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6,
    "line": 4,
    "path": "GRWTSK/GroupTheory/Actions/GaugeState/Checks/Positive/GenericGroupAction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1976b5e9a72b36466abeca3ef0c4d754b2e71944d34c3b568c80c1785d8c006d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Actions/GaugeState/Checks/Positive/GenericGroupAction__SourceOccurrencea696d93c6be6b1a409b5a35c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b588117f7df604404fd473d6e5b113845bdf002251af61a885ed16514cbe3cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–6.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {G : Type u} {S : Type v} [Group G] [MulAction G S] (A B : ℕ → G) (X : ℕ → S) (n : ℕ) :
  X (n+1) = A n • X n ↔ gaugeState B X (n+1) = gaugeTransfer A B n • gaugeState B X n :=
  gaugeState_step_iff A B X n
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/GroupTheory/Actions/GaugeState/Checks/Positive/GenericGroupAction__SourceOccurrencea696d93c6be6b1a409b5a35c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/GroupTheory/Actions/GaugeState/Checks/Positive/GenericGroupAction.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1d87512e534adb3dd23a38b5f215ecb223b0ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
