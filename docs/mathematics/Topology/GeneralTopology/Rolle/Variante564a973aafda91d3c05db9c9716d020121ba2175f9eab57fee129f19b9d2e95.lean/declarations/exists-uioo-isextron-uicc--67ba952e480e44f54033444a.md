# exists_uIoo_isExtrOn_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:760bf33e-6212-d8ea-b4ab-c2f46250de64",
  "kind": "theorem",
  "lexical_name": "exists_uIoo_isExtrOn_uIcc",
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
  "slug": "exists-uioo-isextron-uicc--67ba952e480e44f54033444a",
  "source": {
    "blob": "a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67ba952e480e44f54033444ae836896b1f4c3ea4ea0d1afa02c2ecbcca075a4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:760bf33e-6212-d8ea-b4ab-c2f46250de64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_uIoo_isExtrOn_uIcc (hab : a ≠ b) (hfc : ContinuousOn f (uIcc a b))
    (hfI : f a = f b) :
    ∃ c ∈ uIoo a b, IsExtrOn f (uIcc a b) c :=
  exists_Ioo_extr_on_Icc (by simp [hab.symm]) hfc (by grind)

/-- A continuous function on a unordered closed interval with `f a = f b`
has a local extremum at some point of the corresponding unordered open interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
