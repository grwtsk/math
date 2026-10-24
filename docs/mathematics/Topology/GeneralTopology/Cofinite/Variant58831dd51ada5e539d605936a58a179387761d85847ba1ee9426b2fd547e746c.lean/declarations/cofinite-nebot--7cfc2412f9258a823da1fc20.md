# cofinite_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84928fe0f91c99e17f6a15633f693c8aa3635d1b89707ab56deb14fc359100cc",
  "kind": "instance",
  "lexical_name": "cofinite_neBot",
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
  "slug": "cofinite-nebot--7cfc2412f9258a823da1fc20",
  "source": {
    "blob": "1de23b6689243edf6c6868988b553dc0e019e99d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cfc2412f9258a823da1fc20f2668d6d9e3ce8ee233705cb6115b4e3699a2f27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84928fe0f91c99e17f6a15633f693c8aa3635d1b89707ab56deb14fc359100cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance cofinite_neBot [Infinite α] : NeBot (@cofinite α) :=
  hasBasis_cofinite.neBot_iff.2 fun hs => hs.infinite_compl.nonempty

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1de23b6689243edf6c6868988b553dc0e019e99d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
