# MeasurableEmbedding.borelSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6810ac90-e6bb-d9e5-5f0b-f59a634756e7",
  "kind": "lemma",
  "lexical_name": "MeasurableEmbedding.borelSpace",
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
  "slug": "measurableembedding-borelspace--c32a0ca7c98315046447f9e3",
  "source": {
    "blob": "2e84b41471f757f1a130e0cb9887c77901ab936c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 671,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c32a0ca7c98315046447f9e3da1ff75be1ab915eaea1417117af2f7ad4326569",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6810ac90-e6bb-d9e5-5f0b-f59a634756e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasurableEmbedding.borelSpace {α β : Type*} [MeasurableSpace α] [TopologicalSpace α]
    [MeasurableSpace β] [TopologicalSpace β] [hβ : BorelSpace β] {e : α → β}
    (h'e : MeasurableEmbedding e) (h''e : IsInducing e) :
    BorelSpace α := by
  constructor
  have : MeasurableSpace.comap e (borel β) = ‹_› := by simpa [hβ.measurable_eq] using h'e.comap_eq
  rw [← this, ← borel_comap, h''e.eq_induced]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta37773fcbbda181eb77fc05ec2182cd594bad3ac9adff522f2fe0c5862412eed.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e84b41471f757f1a130e0cb9887c77901ab936c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
