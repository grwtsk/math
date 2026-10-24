# exists_isLocalExtr_Ioo_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55ff71a0-713d-5341-e1bd-fbd6244fa19d",
  "kind": "lemma",
  "lexical_name": "exists_isLocalExtr_Ioo_of_tendsto",
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
  "slug": "exists-islocalextr-ioo-of-tendsto--a189da4eacab95769105d013",
  "source": {
    "blob": "a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a189da4eacab95769105d0137ed77f16c70741b634804ec9203253f2c02b5385",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ff71a0-713d-5341-e1bd-fbd6244fa19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isLocalExtr_Ioo_of_tendsto (hab : a < b) (hfc : ContinuousOn f (Ioo a b))
    (ha : Tendsto f (𝓝[>] a) (𝓝 l)) (hb : Tendsto f (𝓝[<] b) (𝓝 l)) :
    ∃ c ∈ Ioo a b, IsLocalExtr f c :=
  let ⟨c, cmem, hc⟩ := exists_isExtrOn_Ioo_of_tendsto hab hfc ha hb
  ⟨c, cmem, hc.isLocalExtr <| Ioo_mem_nhds cmem.1 cmem.2⟩

/-- A continuous function on an unordered closed interval with `f a = f b`
takes either its maximum or its minimum value at a point in the interior of the interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
