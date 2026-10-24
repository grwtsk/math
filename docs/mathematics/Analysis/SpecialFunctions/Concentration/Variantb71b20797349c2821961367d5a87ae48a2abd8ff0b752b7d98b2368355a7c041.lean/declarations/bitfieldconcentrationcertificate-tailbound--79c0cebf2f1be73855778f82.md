# BitfieldConcentrationCertificate.tailBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8fb378af7d1f10693ea12942cee00177a78956e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e2e5d1e-d42a-8862-9afe-bc2f7ec977c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ac5fcf9-de54-5c75-40c1-f04a41223512",
  "kind": "theorem",
  "lexical_name": "BitfieldConcentrationCertificate.tailBound",
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
  "slug": "bitfieldconcentrationcertificate-tailbound--79c0cebf2f1be73855778f82",
  "source": {
    "blob": "b8fb378af7d1f10693ea12942cee00177a78956e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 209,
    "path": "GRWTSK/Analysis/SpecialFunctions/Concentration/Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79c0cebf2f1be73855778f8213843ae4954901577be2431ebbfb7a3a3e26a6bd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Concentration/Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ac5fcf9-de54-5c75-40c1-f04a41223512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BitfieldConcentrationCertificate.tailBound
    {system : RandomBitfieldSystem}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {influence :
      BitfieldInfluenceCertificate trace}
    (certificate :
      BitfieldConcentrationCertificate influence)
    (scale : Scale)
    (test : TestFunction)
    (thresholdMultiplier : ℝ)
    (thresholdNonnegative :
      0 ≤ thresholdMultiplier) :
    ((system.law.eventMass fun state =>
        traceDeviation trace scale test state >
          thresholdMultiplier *
            Mathematics.MobiusOntology.squareRootWeight
              (influence.mass scale)
              influence.logarithmicOrder *
            influence.testNorm test) : ℝ) ≤
      certificate.mechanism.tailConstant *
        Real.exp
          (-certificate.mechanism.gaussianRate *
            thresholdMultiplier ^ 2) :=
  certificate.mechanism.tailBound
    scale test thresholdMultiplier
    thresholdNonnegative

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Concentration/Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Concentration/Variantb71b20797349c2821961367d5a87ae48a2abd8ff0b752b7d98b2368355a7c041.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8fb378af7d1f10693ea12942cee00177a78956e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
