# coeff_of_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17e361b8-30e2-26cd-8b7b-80e3b55d55b7",
  "kind": "theorem",
  "lexical_name": "coeff_of_le_one",
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
  "slug": "coeff-of-le-one--ec8c68bf7f595731d3a0e2d4",
  "source": {
    "blob": "f3b3fdf8377288ea519e023720806b3892daafab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec8c68bf7f595731d3a0e2d4929e3e3a7364e308b74fa3c9918f88ae31ad0d23",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e361b8-30e2-26cd-8b7b-80e3b55d55b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_of_le_one {b : Ordinal} (hb : b ≤ 1) (o : Ordinal) : coeff b o = single 0 o := by
  ext a
  obtain rfl | ho := eq_or_ne o 0
  · simp
  · obtain rfl | ha := eq_or_ne a 0
    · apply coeff_of_mem_CNF
      rw [CNF.of_le_one hb ho]
      simp
    · rw [single_eq_of_ne ha]
      apply coeff_of_notMem_CNF
      rw [CNF.of_le_one hb ho]
      simpa using ha

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant8bade96c3e47e5f519d2056c181b503fc42d3e13f36282739b2b8d55e1adaa4a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3b3fdf8377288ea519e023720806b3892daafab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
