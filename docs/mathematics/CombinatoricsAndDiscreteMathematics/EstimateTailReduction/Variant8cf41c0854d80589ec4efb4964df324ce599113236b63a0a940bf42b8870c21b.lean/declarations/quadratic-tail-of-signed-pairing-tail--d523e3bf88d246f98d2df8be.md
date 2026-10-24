# quadratic_tail_of_signed_pairing_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eaa39b72d86ae2fedfe0d5ccf33f28a3804e5ac8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3f1e272-78bc-0b10-d448-d3b36cb84ddc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:156d7503-16ec-055e-e805-7e648ba9b48a",
  "kind": "theorem",
  "lexical_name": "quadratic_tail_of_signed_pairing_tail",
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
  "slug": "quadratic-tail-of-signed-pairing-tail--d523e3bf88d246f98d2df8be",
  "source": {
    "blob": "eaa39b72d86ae2fedfe0d5ccf33f28a3804e5ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 130,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d523e3bf88d246f98d2df8bea85eb25bac478ca709ef793d7ffbba55f59a54f6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:156d7503-16ec-055e-e805-7e648ba9b48a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_tail_of_signed_pairing_tail
    (h : SignedPairingTailLowerBound) :
    QuadraticTailLowerBound := by
  obtain ⟨C, hC, R, hR, hpair⟩ := h
  refine
    ⟨archimedeanMultiplier 0 -
        6 * Real.sqrt 2 - 2 * C,
      R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hcorr :=
    SourceCorrectionEstimate.actual_correction_lower A hA
  have hp := hpair A hRA
  rw [source_arithmetic_representation A hA]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variant8cf41c0854d80589ec4efb4964df324ce599113236b63a0a940bf42b8870c21b.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa39b72d86ae2fedfe0d5ccf33f28a3804e5ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
