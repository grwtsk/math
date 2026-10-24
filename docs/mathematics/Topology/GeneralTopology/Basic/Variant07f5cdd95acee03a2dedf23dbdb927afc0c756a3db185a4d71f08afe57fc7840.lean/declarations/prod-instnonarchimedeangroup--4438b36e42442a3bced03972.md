# Prod.instNonarchimedeanGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cb998d4662d6c734219055a81204462762f0399e215cb1646c1ee1fe8b1f8ec",
  "kind": "instance",
  "lexical_name": "Prod.instNonarchimedeanGroup",
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
  "slug": "prod-instnonarchimedeangroup--4438b36e42442a3bced03972",
  "source": {
    "blob": "3e9bcc8d956ea0f73449bd91178b1f974ef29466",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 102,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4438b36e42442a3bced0397220efe60129206ca6b1516c7fe3dd6a9b476402a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cb998d4662d6c734219055a81204462762f0399e215cb1646c1ee1fe8b1f8ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instNonarchimedeanGroup : NonarchimedeanGroup (G × K) where
  is_nonarchimedean _ hU :=
    let ⟨V, W, h⟩ := prod_subset hU
    ⟨V.prod W, ‹_›⟩

end NonarchimedeanGroup

namespace NonarchimedeanRing

open NonarchimedeanAddGroup

variable {R S : Type*}
variable [Ring R] [TopologicalSpace R] [NonarchimedeanRing R]
variable [Ring S] [TopologicalSpace S] [NonarchimedeanRing S]

/-- The Cartesian product of two nonarchimedean rings is nonarchimedean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant07f5cdd95acee03a2dedf23dbdb927afc0c756a3db185a4d71f08afe57fc7840.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9bcc8d956ea0f73449bd91178b1f974ef29466` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
