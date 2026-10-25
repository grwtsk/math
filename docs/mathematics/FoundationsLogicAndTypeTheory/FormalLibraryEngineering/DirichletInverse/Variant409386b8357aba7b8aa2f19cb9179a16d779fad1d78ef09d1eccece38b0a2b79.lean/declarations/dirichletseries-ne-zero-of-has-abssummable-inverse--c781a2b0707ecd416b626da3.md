# dirichletSeries_ne_zero_of_has_absSummable_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4abea4ff-f660-1511-5de0-cfca958f33b8",
  "kind": "theorem",
  "lexical_name": "dirichletSeries_ne_zero_of_has_absSummable_inverse",
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
  "slug": "dirichletseries-ne-zero-of-has-abssummable-inverse--c781a2b0707ecd416b626da3",
  "source": {
    "blob": "ad1096fbeef7dbf8f9a39f7870048c735c18e24a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c781a2b0707ecd416b626da34057c81eda1c2fef9b85531c83be39d7f61b36a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4abea4ff-f660-1511-5de0-cfca958f33b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletSeries_ne_zero_of_has_absSummable_inverse
    (f g : ArithFn Complex)
    {s : Complex}
    (hf : ComplexDirichletAbsSummable f s)
    (hg : ComplexDirichletAbsSummable g s)
    (hinv : HasDirichletInverse f g) :
    complexDirichletSeries f s ≠ 0 := by
  intro hzero
  have hmul :=
    dirichletSeries_mul_inverse_eq_one f g hf hg hinv
  rw [hzero, zero_mul] at hmul
  norm_num at hmul

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DirichletInverse/Variant409386b8357aba7b8aa2f19cb9179a16d779fad1d78ef09d1eccece38b0a2b79.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1096fbeef7dbf8f9a39f7870048c735c18e24a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
