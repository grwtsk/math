# coefficient_one_eq_sixteen_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "204e6bffeea98af5efdb01cc1bd619b790e465bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ddfd454-aabd-7e5b-8940-f3f209e572d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad89f4bb-c32b-e271-7413-8a5287363ef9",
  "kind": "theorem",
  "lexical_name": "coefficient_one_eq_sixteen_integral",
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
  "slug": "coefficient-one-eq-sixteen-integral--d100e37ef75c08a2756efe8d",
  "source": {
    "blob": "204e6bffeea98af5efdb01cc1bd619b790e465bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d100e37ef75c08a2756efe8dd4f10511069edc5cd22f745eead0e993010c57c9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad89f4bb-c32b-e271-7413-8a5287363ef9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_one_eq_sixteen_integral :
    XiToeplitz.coefficient 1 = 16 * ∫ t in Ioi (0 : ℝ), t ^ 2 * thetaPhi t := by
  rw [thetaCoefficientFormula 1, integral_Ici_eq_integral_Ioi]
  have hfun : (fun t : ℝ => thetaPhi t * evenBasis 1 t) =
      fun t : ℝ => 2 * (t ^ 2 * thetaPhi t) := by
    funext t
    norm_num [evenBasis]
    ring
  rw [hfun, integral_const_mul]
  ring

/-- Strict positivity comes from the proved integrable theta moment and its
positive-measure support, not merely pointwise nonnegativity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5d2a8bddf27e307a783ab3cd8e36861e48c9c4518a7c5e8a5768d491135439a7.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204e6bffeea98af5efdb01cc1bd619b790e465bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
