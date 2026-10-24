# restrict_dirac'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bb93d69-48fe-e0a6-a0fd-54155036badc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a353640-9c9f-73ca-0fc9-5a19b2008a43",
  "kind": "theorem",
  "lexical_name": "restrict_dirac'",
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
  "slug": "restrict-dirac--2e1adc38397ef0813d2e3ee5",
  "source": {
    "blob": "3431d6976e3a76bd141f5be517d8eb2fdc79436d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 217,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e1adc38397ef0813d2e3ee52fbdfe63510cae4c3f8a834fa768b6f107a5bf74",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a353640-9c9f-73ca-0fc9-5a19b2008a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_dirac' (hs : MeasurableSet s) [Decidable (a ∈ s)] :
    (Measure.dirac a).restrict s = if a ∈ s then Measure.dirac a else 0 := by
  split_ifs with has
  · apply restrict_eq_self_of_ae_mem
    rw [ae_dirac_iff] <;> assumption
  · rw [restrict_eq_zero, dirac_apply' _ hs, indicator_of_notMem has]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantdb8b8028348ac0d9503c7f657aa06393149ef7ffda1b62e49c67529cf6708b89.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3431d6976e3a76bd141f5be517d8eb2fdc79436d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
