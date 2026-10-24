# coefficient_zero_pos_of_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20a18aec0859ccda7973c7e538a89c9e90e111c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec7f33bf-b2fb-9a6c-6e6b-bbf675f0bc0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7f4b208-1a91-4b5c-d0ce-1061c7b5d748",
  "kind": "theorem",
  "lexical_name": "coefficient_zero_pos_of_formula",
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
  "slug": "coefficient-zero-pos-of-formula--ad241417f5afd3103c98ac5e",
  "source": {
    "blob": "20a18aec0859ccda7973c7e538a89c9e90e111c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad241417f5afd3103c98ac5e42f030d14d3a295a66138debba1aba8f6619e560",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f4b208-1a91-4b5c-d0ce-1061c7b5d748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_zero_pos_of_formula (hformula : ThetaCoefficientFormula) :
    0 < XiToeplitz.coefficient 0 :=
  coefficient_positive_of_thetaCoefficientFormula hformula 0

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift

#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaPhi_complex_even_moment_eq
#check FormalResearch.RiemannHypothesis.ThetaPositiveLift.coefficient_eq_thetaPhi_Ioi_of_even_derivative
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.thetaPhi_complex_even_moment_eq
#print axioms FormalResearch.RiemannHypothesis.ThetaPositiveLift.coefficient_eq_thetaPhi_Ioi_of_even_derivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variantadb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20a18aec0859ccda7973c7e538a89c9e90e111c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
