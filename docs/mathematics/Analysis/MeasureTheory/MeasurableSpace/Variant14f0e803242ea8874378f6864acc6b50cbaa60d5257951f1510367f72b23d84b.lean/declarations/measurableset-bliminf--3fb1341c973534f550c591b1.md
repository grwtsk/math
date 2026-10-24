# measurableSet_bliminf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:804c3e3a-276b-afbb-0277-1be43b20b6c4",
  "kind": "theorem",
  "lexical_name": "measurableSet_bliminf",
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
  "slug": "measurableset-bliminf--3fb1341c973534f550c591b1",
  "source": {
    "blob": "e51105a40977d1286645bc459af9079358484129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1938,
    "line": 1932,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fb1341c973534f550c591b1bea2acd680efc6ecfa5eb1248ed4de9744fd2411",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:804c3e3a-276b-afbb-0277-1be43b20b6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1932–1938.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_bliminf {s : ℕ → Set α} {p : ℕ → Prop} (h : ∀ n, p n → MeasurableSet (s n)) :
    MeasurableSet <| Filter.bliminf s Filter.atTop p := by
  simp only [Filter.bliminf_eq_iSup_biInf_of_nat, iInf_eq_iInter, iSup_eq_iUnion]
  exact .iUnion fun n => .iInter fun m => .iInter fun hm => h m hm.1
#align measurable_set.measurable_set_bliminf MeasurableSet.measurableSet_bliminf

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableSpace/Variant14f0e803242ea8874378f6864acc6b50cbaa60d5257951f1510367f72b23d84b.lean#L1932).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51105a40977d1286645bc459af9079358484129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
