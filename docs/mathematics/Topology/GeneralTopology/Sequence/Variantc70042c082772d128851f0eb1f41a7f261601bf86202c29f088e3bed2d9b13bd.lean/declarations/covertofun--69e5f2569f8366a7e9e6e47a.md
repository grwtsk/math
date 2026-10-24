# coverToFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9f66267c2df81f288391ad2bf08734fa699719d2c6e3265a8bd8e934e3c5940",
  "kind": "def",
  "lexical_name": "coverToFun",
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
  "slug": "covertofun--69e5f2569f8366a7e9e6e47a",
  "source": {
    "blob": "6198ecf4cfe62253135d270015027baac93a152e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69e5f2569f8366a7e9e6e47af2dabd2b3e9e5246960dc0564178708bcd278e0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9f66267c2df81f288391ad2bf08734fa699719d2c6e3265a8bd8e934e3c5940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coverToFun {S T X Y : Type*} (i : Y → T) (π : T → S × Option X) :
    T ⊕ {xy : Y × Y // π (i xy.1) = π (i xy.2)} → {xy : T × T // π xy.1 = π xy.2} :=
  Sum.elim (fun t ↦ ⟨(t, t), rfl⟩) (fun xy ↦ ⟨(i xy.val.1, i xy.val.2), xy.prop⟩)

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequence/Variantc70042c082772d128851f0eb1f41a7f261601bf86202c29f088e3bed2d9b13bd.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6198ecf4cfe62253135d270015027baac93a152e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
