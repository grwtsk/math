# upperSemicontinuousOn_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c734c18b-1aa3-7d9b-673a-950bbbeedd34",
  "kind": "theorem",
  "lexical_name": "upperSemicontinuousOn_sum",
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
  "slug": "uppersemicontinuouson-sum--da21be54232c3df93e966e68",
  "source": {
    "blob": "9dab6865cc0f4761ec3cf57c932412e919ca1a50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1136,
    "line": 1132,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante01792f4b1d4c5b5284d7363c98287085a1f30e15651efeadfa3ac3aa11b5a71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da21be54232c3df93e966e68509bb68d7aee169f666fa03e217754d60c1b9ba6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante01792f4b1d4c5b5284d7363c98287085a1f30e15651efeadfa3ac3aa11b5a71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c734c18b-1aa3-7d9b-673a-950bbbeedd34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1132–1136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperSemicontinuousOn_sum {f : ι → α → γ} {a : Finset ι}
    (ha : ∀ i ∈ a, UpperSemicontinuousOn (f i) s) :
    UpperSemicontinuousOn (fun z => ∑ i ∈ a, f i z) s := fun x hx =>
  upperSemicontinuousWithinAt_sum fun i hi => ha i hi x hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante01792f4b1d4c5b5284d7363c98287085a1f30e15651efeadfa3ac3aa11b5a71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante01792f4b1d4c5b5284d7363c98287085a1f30e15651efeadfa3ac3aa11b5a71.lean#L1132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dab6865cc0f4761ec3cf57c932412e919ca1a50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
