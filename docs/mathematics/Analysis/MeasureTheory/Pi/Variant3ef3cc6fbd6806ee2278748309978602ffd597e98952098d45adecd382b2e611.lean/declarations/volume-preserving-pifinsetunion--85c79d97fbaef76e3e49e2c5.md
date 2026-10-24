# volume_preserving_piFinsetUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0449f6d0-a4a2-ce8f-3dad-3d860b884b2c",
  "kind": "theorem",
  "lexical_name": "volume_preserving_piFinsetUnion",
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
  "slug": "volume-preserving-pifinsetunion--85c79d97fbaef76e3e49e2c5",
  "source": {
    "blob": "162b60fdc26deae210eb860d0eae58f1a6e4e9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 846,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85c79d97fbaef76e3e49e2c5da0bf8e3c4960c26b841a43411752c14c67c8499",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0449f6d0-a4a2-ce8f-3dad-3d860b884b2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_preserving_piFinsetUnion {ι : Type*} [DecidableEq ι] (α : ι → Type*) {s t : Finset ι}
    (h : Disjoint s t) [∀ i, MeasureSpace (α i)] [∀ i, SigmaFinite (volume : Measure (α i))] :
    MeasurePreserving (MeasurableEquiv.piFinsetUnion α h) volume volume :=
  measurePreserving_piFinsetUnion h (fun _ ↦ volume)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Variant3ef3cc6fbd6806ee2278748309978602ffd597e98952098d45adecd382b2e611.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `162b60fdc26deae210eb860d0eae58f1a6e4e9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
