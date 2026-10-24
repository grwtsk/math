# resolvedSupport_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:075bf235-700b-cef0-40ac-a841e4f696c8",
  "kind": "theorem",
  "lexical_name": "resolvedSupport_mono",
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
  "slug": "resolvedsupport-mono--7e3c008ed38af129d3d110c9",
  "source": {
    "blob": "f8bb944351b952a362bb1ec95dbce87418ef0794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3c008ed38af129d3d110c9d7c45731dad5b0bde418b037e91d4be131df1f4d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:075bf235-700b-cef0-40ac-a841e4f696c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvedSupport_mono
    {width : Nat}
    {parent child : PartialBitfield width}
    (extends : Extends parent child) :
    resolvedSupport parent ⊆
      resolvedSupport child := by
  classical
  intro coordinate parentResolved
  simp only
    [resolvedSupport, Finset.mem_filter,
      Finset.mem_univ, true_and] at
    parentResolved ⊢
  intro childUnresolved
  have coordinateExtends :=
    extends coordinate
  rw [childUnresolved] at coordinateExtends
  cases parentValue : parent coordinate <;>
    simp [parentValue, PartialBit.LE] at
      parentResolved coordinateExtends

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantd68da4f96000ed72cea74c2dbf5f7743e5932c3e453ba5eb1ab796321c2388f1.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8bb944351b952a362bb1ec95dbce87418ef0794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
