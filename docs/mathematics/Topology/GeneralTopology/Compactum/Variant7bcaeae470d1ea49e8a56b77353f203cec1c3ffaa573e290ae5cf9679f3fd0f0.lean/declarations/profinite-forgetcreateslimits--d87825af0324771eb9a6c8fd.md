# Profinite.forgetCreatesLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc975867c5660afa6fcdcafffd30dda432c3f2f00dffe3fc885b9b2a600762d1",
  "kind": "instance",
  "lexical_name": "Profinite.forgetCreatesLimits",
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
  "slug": "profinite-forgetcreateslimits--d87825af0324771eb9a6c8fd",
  "source": {
    "blob": "a149d855d8f5678005f4b76eb886dfc733dd0623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 516,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d87825af0324771eb9a6c8fdd38a60b360c9fe5e309a07a2ec3b27bac0517185",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc975867c5660afa6fcdcafffd30dda432c3f2f00dffe3fc885b9b2a600762d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–516.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Profinite.forgetCreatesLimits : CreatesLimits (forget Profinite) := by
  change CreatesLimits (profiniteToCompHaus ⋙ forget _)
  infer_instance
#align Profinite.forget_creates_limits Profinite.forgetCreatesLimits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactum/Variant7bcaeae470d1ea49e8a56b77353f203cec1c3ffaa573e290ae5cf9679f3fd0f0.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a149d855d8f5678005f4b76eb886dfc733dd0623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
