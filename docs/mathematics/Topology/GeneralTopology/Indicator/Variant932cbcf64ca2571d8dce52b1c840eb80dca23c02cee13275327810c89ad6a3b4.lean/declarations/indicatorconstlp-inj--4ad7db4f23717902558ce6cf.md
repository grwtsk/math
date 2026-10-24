# indicatorConstLp_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c59ef3ab1a7d551186ffbec150f636eebba6725f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4defebe-fbb0-e24d-2aa0-44aa504c2b16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a18a4b8-8c7f-2737-9cee-c746b74edab6",
  "kind": "theorem",
  "lexical_name": "indicatorConstLp_inj",
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
  "slug": "indicatorconstlp-inj--4ad7db4f23717902558ce6cf",
  "source": {
    "blob": "c59ef3ab1a7d551186ffbec150f636eebba6725f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 207,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ad7db4f23717902558ce6cf7e8ef9be04e3c9c2b4e368fada1f86e1551c3576",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a18a4b8-8c7f-2737-9cee-c746b74edab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem indicatorConstLp_inj {s t : Set α} (hs : MeasurableSet s) (hsμ : μ s ≠ ∞)
    (ht : MeasurableSet t) (htμ : μ t ≠ ∞) {c : E} (hc : c ≠ 0) :
    indicatorConstLp p hs hsμ c = indicatorConstLp p ht htμ c ↔ s =ᵐ[μ] t := by
  simp_rw [← indicator_const_eventuallyEq hc, indicatorConstLp, MemLp.toLp_eq_toLp_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variant932cbcf64ca2571d8dce52b1c840eb80dca23c02cee13275327810c89ad6a3b4.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c59ef3ab1a7d551186ffbec150f636eebba6725f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
