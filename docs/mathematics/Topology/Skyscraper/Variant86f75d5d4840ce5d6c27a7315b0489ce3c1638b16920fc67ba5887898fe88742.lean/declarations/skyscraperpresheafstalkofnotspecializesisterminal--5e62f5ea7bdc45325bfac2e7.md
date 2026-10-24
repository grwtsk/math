# skyscraperPresheafStalkOfNotSpecializesIsTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12f3fe94cc96c3dbe9f585b201520ea94a2b1282f51aa1759a8a8c9f367db753",
  "kind": "def",
  "lexical_name": "skyscraperPresheafStalkOfNotSpecializesIsTerminal",
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
  "slug": "skyscraperpresheafstalkofnotspecializesisterminal--5e62f5ea7bdc45325bfac2e7",
  "source": {
    "blob": "9132a6ad081a9f67fcff93cb1987dec501dfd4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 221,
    "path": "GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e62f5ea7bdc45325bfac2e74cf0301cb2dd9c4e8ba6a36e0e7194506d88ed41",
  "verification": {
    "reference": "docs/verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12f3fe94cc96c3dbe9f585b201520ea94a2b1282f51aa1759a8a8c9f367db753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skyscraperPresheafStalkOfNotSpecializesIsTerminal [HasColimits C] {y : X} (h : ¬p₀ ⤳ y) :
    IsTerminal ((skyscraperPresheaf p₀ A).stalk y) :=
  IsTerminal.ofIso terminalIsTerminal <| (skyscraperPresheafStalkOfNotSpecializes _ _ h).symm
#align skyscraper_presheaf_stalk_of_not_specializes_is_terminal skyscraperPresheafStalkOfNotSpecializesIsTerminal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Skyscraper/Variant86f75d5d4840ce5d6c27a7315b0489ce3c1638b16920fc67ba5887898fe88742.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9132a6ad081a9f67fcff93cb1987dec501dfd4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
