# withExactAccumulation_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f197e95a-652b-8e5e-6e3a-9bc090f44f64",
  "kind": "theorem",
  "lexical_name": "withExactAccumulation_checked",
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
  "slug": "withexactaccumulation-checked--75eeafc8d1717438afe76392",
  "source": {
    "blob": "8235fd3fa6610017499cd1cfbf1a4350cba8d3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 193,
    "path": "GRWTSK/Analysis/Complex/RationalTentFamily.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75eeafc8d1717438afe763924ac24755db3b7ff62fdc4576302e89dbe5ae586c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f197e95a-652b-8e5e-6e3a-9bc090f44f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withExactAccumulation_checked {family : List Member} {evaluations : List Evaluation}
    {x h : ℚ} (hh : 0 < h) (ha : 1 < x - h) (hk : (family.map Member.key).Nodup)
    (hl : evaluations.length = family.length)
    (hs : ∀ i ∈ Finset.range family.length,
      0 < (memberAt family i).multiplicity ∧
      (evaluationAt evaluations i).key = (memberAt family i).key ∧
      RationalTentQuadrature.check (memberAt family i).center x h
        (evaluationAt evaluations i).cells (evaluationAt evaluations i).quadrature = true) :
    check family x h (withExactAccumulation family evaluations) = true := by
  exact (check_iff_valid family x h _).mpr
    ⟨hh, ha, hk, hl, hs, RationalFiniteSum.exactTrace_checked _⟩

/-- Construct both halves of every member from that member's own resolutions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTentFamily.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTentFamily.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8235fd3fa6610017499cd1cfbf1a4350cba8d3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
