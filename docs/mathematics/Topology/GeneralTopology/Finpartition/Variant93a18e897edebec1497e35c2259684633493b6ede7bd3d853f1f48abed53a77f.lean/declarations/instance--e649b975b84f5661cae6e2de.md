# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf9ee62a5655f3d5f135346bcbb58297ecb4e735b762d465b688ba4b9e5053f7",
  "kind": "instance",
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
  "slug": "instance--e649b975b84f5661cae6e2de",
  "source": {
    "blob": "c2eecf7d06c190b3d48b40a8418bfa6b1225a46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e649b975b84f5661cae6e2dee1c3e25992c5124ff0e8e350d1814a4eca9005ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf9ee62a5655f3d5f135346bcbb58297ecb4e735b762d465b688ba4b9e5053f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Decidable (a = ⊥)] : OrderTop (Finpartition a)
    where
  top := if ha : a = ⊥ then (Finpartition.empty α).copy ha.symm else indiscrete ha
  le_top P := by
    split_ifs with h
    · intro x hx
      simpa [h, P.ne_bot hx] using P.le hx
    · exact fun b hb ↦ ⟨a, mem_singleton_self _, P.le hb⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2eecf7d06c190b3d48b40a8418bfa6b1225a46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
