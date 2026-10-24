# StronglyMeasurable.of_subsingleton_cod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329a03cb-a4d0-34f1-56f9-ece3a5cc3725",
  "kind": "lemma",
  "lexical_name": "StronglyMeasurable.of_subsingleton_cod",
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
  "slug": "stronglymeasurable-of-subsingleton-cod--eb731bd5ff8db0d631aec7ff",
  "source": {
    "blob": "387265fdfa927150926529b5ea6818f96cb354e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb731bd5ff8db0d631aec7ffe9794b9bc2e2671f27fa0adfea737e6c4633909d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329a03cb-a4d0-34f1-56f9-ece3a5cc3725`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StronglyMeasurable.of_subsingleton_cod [Subsingleton β] : StronglyMeasurable f := by
  let f_sf : α →ₛ β := ⟨f, fun x => ?_, Set.Subsingleton.finite Set.subsingleton_of_subsingleton⟩
  · exact ⟨fun _ => f_sf, fun x => tendsto_const_nhds⟩
  · simp [Set.preimage, eq_iff_true_of_subsingleton]

@[deprecated StronglyMeasurable.of_subsingleton_cod (since := "2025-04-09")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta404692e32407cc3efaf50eb4ef6041b56a24f6ecff276fc0ecc12f0b77425ec.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387265fdfa927150926529b5ea6818f96cb354e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
