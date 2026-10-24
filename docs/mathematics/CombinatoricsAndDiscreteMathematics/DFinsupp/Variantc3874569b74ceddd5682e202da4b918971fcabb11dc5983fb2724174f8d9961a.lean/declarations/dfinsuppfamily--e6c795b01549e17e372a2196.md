# dfinsuppFamilyₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a70371da18cf34451a50cde2a9cb9666e4e16231c5946dd8d1ba5deefe228f7",
  "kind": "def",
  "lexical_name": "dfinsuppFamilyₗ",
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
  "slug": "dfinsuppfamily--e6c795b01549e17e372a2196",
  "source": {
    "blob": "0e5afb0f938fed13fd3d26bf217b7944b2ead5c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6c795b01549e17e372a21967235416e2cc45cba77f14ac03de8581b56595b34",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a70371da18cf34451a50cde2a9cb9666e4e16231c5946dd8d1ba5deefe228f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dfinsuppFamilyₗ :
    (Π (p : Π i, κ i), MultilinearMap R (fun i ↦ M i (p i)) (N p))
      →ₗ[R] MultilinearMap R (fun i => Π₀ j : κ i, M i j) (Π₀ t : Π i, κ i, N t) where
  toFun := dfinsuppFamily
  map_add' := dfinsuppFamily_add
  map_smul' := dfinsuppFamily_smul

end CommSemiring

end dfinsuppFamily

end MultilinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DFinsupp/Variantc3874569b74ceddd5682e202da4b918971fcabb11dc5983fb2724174f8d9961a.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5afb0f938fed13fd3d26bf217b7944b2ead5c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
