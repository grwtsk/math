# convs_eq_convergent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eeb4639e0ad967743ebe528d745181db5b85f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf321024753de2c3f2cf80db5135540666784633e9a841aabbeb011387d9549f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f459849-feea-2a37-f98c-e32f22eebb88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:89c9fc0e-b7a3-358d-6029-61a348b6baff",
  "kind": "theorem",
  "lexical_name": "convs_eq_convergent",
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
  "slug": "convs-eq-convergent--888ca5366be7d5467cc32f5d",
  "source": {
    "blob": "79eeb4639e0ad967743ebe528d745181db5b85f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbf321024753de2c3f2cf80db5135540666784633e9a841aabbeb011387d9549f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:888ca5366be7d5467cc32f5d3f850833efd6b3b98bc224d13360358d64f245d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbf321024753de2c3f2cf80db5135540666784633e9a841aabbeb011387d9549f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89c9fc0e-b7a3-358d-6029-61a348b6baff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convs_eq_convergent (ξ : ℝ) (n : ℕ) :
    (GenContFract.of ξ).convs n = ξ.convergent n := by
  induction n generalizing ξ with
  | zero => simp only [zeroth_conv_eq_h, of_h_eq_floor, convergent_zero, Rat.cast_intCast]
  | succ n ih => rw [convs_succ, ih (fract ξ)⁻¹, convergent_succ, one_div]; norm_cast

end Real

end Convergent

namespace Real

variable {ξ : ℝ}

/-- The main result, *Legendre's Theorem* on rational approximation:
if `ξ` is a real number and `q` is a rational number such that `|ξ - q| < 1/(2*q.den^2)`,
then `q` is a convergent of the continued fraction expansion of `ξ`.
This is the version using `GenContFract.convs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbf321024753de2c3f2cf80db5135540666784633e9a841aabbeb011387d9549f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/ContinuedFractions/Variantbf321024753de2c3f2cf80db5135540666784633e9a841aabbeb011387d9549f.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eeb4639e0ad967743ebe528d745181db5b85f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
