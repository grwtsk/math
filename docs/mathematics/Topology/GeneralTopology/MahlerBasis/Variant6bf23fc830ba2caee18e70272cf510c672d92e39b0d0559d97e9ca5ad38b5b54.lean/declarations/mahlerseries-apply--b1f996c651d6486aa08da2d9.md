# mahlerSeries_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5bde6460-829c-75f0-886f-9144557f6869",
  "kind": "lemma",
  "lexical_name": "mahlerSeries_apply",
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
  "slug": "mahlerseries-apply--b1f996c651d6486aa08da2d9",
  "source": {
    "blob": "931ff2159c5075009d8814d107a0a0bc1cdd0198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f996c651d6486aa08da2d99bbe5126a179c85036933a05207ae805461f13a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5bde6460-829c-75f0-886f-9144557f6869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mahlerSeries_apply (ha : Tendsto a atTop (𝓝 0)) (x : ℤ_[p]) :
    mahlerSeries a x = ∑' n, mahler n x • a n := by
  simp only [mahlerSeries, ← ContinuousMap.tsum_apply (hasSum_mahlerSeries ha).summable,
    mahlerTerm_apply]

/--
The value of a Mahler series at a natural number `n` is given by the finite sum of the first `m`
terms, for any `n ≤ m`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MahlerBasis/Variant6bf23fc830ba2caee18e70272cf510c672d92e39b0d0559d97e9ca5ad38b5b54.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931ff2159c5075009d8814d107a0a0bc1cdd0198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
