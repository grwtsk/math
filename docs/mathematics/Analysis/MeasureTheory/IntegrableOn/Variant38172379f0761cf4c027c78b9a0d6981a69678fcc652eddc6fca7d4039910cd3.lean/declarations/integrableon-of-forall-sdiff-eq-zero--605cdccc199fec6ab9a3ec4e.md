# IntegrableOn.of_forall_sdiff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b6aaee9-386b-9561-a4e9-bc0ff4583f1f",
  "kind": "theorem",
  "lexical_name": "IntegrableOn.of_forall_sdiff_eq_zero",
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
  "slug": "integrableon-of-forall-sdiff-eq-zero--605cdccc199fec6ab9a3ec4e",
  "source": {
    "blob": "798451013ebbcf882d5920f9b95d2fbbcd760f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 440,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605cdccc199fec6ab9a3ec4e7cbba22ccaef66da08f6e05d9d41f4fa787947e9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b6aaee9-386b-9561-a4e9-bc0ff4583f1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntegrableOn.of_forall_sdiff_eq_zero {f : α → ε'}
    (hf : IntegrableOn f s μ) (ht : MeasurableSet t)
    (h't : ∀ x ∈ t \ s, f x = 0) : IntegrableOn f t μ :=
  hf.of_ae_sdiff_eq_zero ht.nullMeasurableSet (Eventually.of_forall h't)

@[deprecated (since := "2026-06-03")]
alias IntegrableOn.of_forall_diff_eq_zero := IntegrableOn.of_forall_sdiff_eq_zero

/-- If a function is integrable on a set `s` and vanishes almost everywhere on its complement,
then it is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798451013ebbcf882d5920f9b95d2fbbcd760f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
