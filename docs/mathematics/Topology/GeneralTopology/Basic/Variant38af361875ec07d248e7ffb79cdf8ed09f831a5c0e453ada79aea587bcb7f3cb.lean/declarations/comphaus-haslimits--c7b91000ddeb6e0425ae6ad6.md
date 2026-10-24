# CompHaus.hasLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ec693aef55a272af46cb15be5702fb8e17552388cd26eecd9cade642b659c6d",
  "kind": "instance",
  "lexical_name": "CompHaus.hasLimits",
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
  "slug": "comphaus-haslimits--c7b91000ddeb6e0425ae6ad6",
  "source": {
    "blob": "e9c2dd2d8318634915314ab28aa3c41ec1531d46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7b91000ddeb6e0425ae6ad613d5ffde652ea66fc2ba92b1c959c63e76d1c3e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ec693aef55a272af46cb15be5702fb8e17552388cd26eecd9cade642b659c6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CompHaus.hasLimits : Limits.HasLimits CompHaus :=
  hasLimits_of_hasLimits_createsLimits compHausToTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant38af361875ec07d248e7ffb79cdf8ed09f831a5c0e453ada79aea587bcb7f3cb.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c2dd2d8318634915314ab28aa3c41ec1531d46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
