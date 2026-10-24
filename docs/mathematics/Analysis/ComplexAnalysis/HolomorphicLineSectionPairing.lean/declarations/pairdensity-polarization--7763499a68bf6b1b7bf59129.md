# pairDensity_polarization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975c08d73459b86c39e12761831fcfb980676165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionPairing.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cd0c9d7-6367-addc-0e31-1e08ff67461a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86894a1c-7fc3-1be5-92b0-61471f4d9c27",
  "kind": "theorem",
  "lexical_name": "pairDensity_polarization",
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
  "slug": "pairdensity-polarization--7763499a68bf6b1b7bf59129",
  "source": {
    "blob": "975c08d73459b86c39e12761831fcfb980676165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 70,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionPairing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7763499a68bf6b1b7bf5912902ff145fe6b8c52279669f3bb97dc7578050527a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86894a1c-7fc3-1be5-92b0-61471f4d9c27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairDensity_polarization (M : MetricWeights C) (hOpen : D.IsOpenCover)
    (s t : BundleSection C hOpen) :
    pairDensity M hOpen s t = fun x => ((1 / 4 : ℝ) : ℂ) *
      ((realSquare M hOpen (sectionAdd s t) x : ℂ) -
        (realSquare M hOpen (sectionAdd s (sectionSMul (-1) t)) x : ℂ) -
        Complex.I * ((realSquare M hOpen (sectionAdd s (sectionSMul Complex.I t)) x : ℂ) -
          (realSquare M hOpen (sectionAdd s (sectionSMul (-Complex.I) t)) x : ℂ))) := by
  funext x
  exact weightedPair_polarization (M.atPoint x) (s.value x) (t.value x)

/-- Intrinsic continuity does not require continuity of the preferred-chart selector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineSectionPairing.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c08d73459b86c39e12761831fcfb980676165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
