# splitCenterBox

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:699058bc9d0248c7edd3c6bd29199136f8d4fe81cd11042d288023be54769bf2",
  "kind": "def",
  "lexical_name": "splitCenterBox",
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
  "slug": "splitcenterbox--bcba98bc8009ad02a58fb87c",
  "source": {
    "blob": "9d99499ceebc8c3699fbeef6362261b6a3d32bbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcba98bc8009ad02a58fb87cd905303b61930aed7b5e01c2fa7383c322b89e75",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:699058bc9d0248c7edd3c6bd29199136f8d4fe81cd11042d288023be54769bf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitCenterBox (I : Box ι) (s : Set ι) : Box ι where
  lower := s.piecewise (fun i ↦ (I.lower i + I.upper i) / 2) I.lower
  upper := s.piecewise I.upper fun i ↦ (I.lower i + I.upper i) / 2
  lower_lt_upper i := by
    dsimp only [Set.piecewise]
    split_ifs <;> simp only [left_lt_add_div_two, add_div_two_lt_right, I.lower_lt_upper]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d99499ceebc8c3699fbeef6362261b6a3d32bbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
