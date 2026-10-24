# equation20

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5821d1847af5320967e6e7ac504340255923935",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cffc7a51-08d6-5a3a-9cf7-f7b828f8391c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:250d7046-0707-ba93-7cc8-0f324f5b97a6",
  "kind": "theorem",
  "lexical_name": "equation20",
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
  "slug": "equation20--dfde15f36b717c317f6ea6b6",
  "source": {
    "blob": "d5821d1847af5320967e6e7ac504340255923935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 579,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfde15f36b717c317f6ea6b68fedae14d1be0016023e42790adab55e5825faeb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:250d7046-0707-ba93-7cc8-0f324f5b97a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equation20
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A in Ioi (1 : ℝ),
      Complex.exp (-s * A) *
        (weightedSource A : ℂ)) =
      ∑' o : ZeroOccurrence,
        modeCoefficient (shiftedValue o) *
          ∑ k ∈ Finset.range 9,
            shiftedValue o ^ k *
              (rCoeff k *
                  J k (s - 2 * shiftedValue o) +
                (-1 : ℂ) ^ k * rCoeff k *
                  J k (s + 2 * shiftedValue o) -
                2 * sCoeff k * J k s) := by
  rw [← integral_tsum_occurrences s hs]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro A hA
  exact (summedIntegrand_eq s A hA.le).symm

/-- Initial-half-plane transformed occurrence family is absolutely summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5821d1847af5320967e6e7ac504340255923935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
