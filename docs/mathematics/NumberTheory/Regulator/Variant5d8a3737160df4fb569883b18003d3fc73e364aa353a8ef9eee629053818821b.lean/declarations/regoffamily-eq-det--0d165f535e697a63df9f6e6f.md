# regOfFamily_eq_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da02a295-57d7-4a44-e0aa-22b138ea6494",
  "kind": "theorem",
  "lexical_name": "regOfFamily_eq_det",
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
  "slug": "regoffamily-eq-det--0d165f535e697a63df9f6e6f",
  "source": {
    "blob": "5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 232,
    "path": "GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d165f535e697a63df9f6e6f67fcbbca1a92f443e79c46bae295dadd0098abf0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da02a295-57d7-4a44-e0aa-22b138ea6494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regOfFamily_eq_det (u : Fin (rank K) → (𝓞 K)ˣ) (w' : InfinitePlace K)
    (e : {w // w ≠ w'} ≃ Fin (rank K)) :
    regOfFamily u =
      |(of fun i w : {w // w ≠ w'} ↦ (mult w.val : ℝ) * Real.log (w.val (u (e i) : K))).det| := by
  simp [regOfFamily_eq_det', abs_det_eq_abs_det u e (equivFinRank K).symm, logEmbedding]

open scoped Classical in
/--
The degree of `K` times the regulator of the family `u` is equal to the absolute value of the
determinant of the matrix whose columns are
`(mult w * log w (fundSystem K i))_i, w` and the column `(mult w)_w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
