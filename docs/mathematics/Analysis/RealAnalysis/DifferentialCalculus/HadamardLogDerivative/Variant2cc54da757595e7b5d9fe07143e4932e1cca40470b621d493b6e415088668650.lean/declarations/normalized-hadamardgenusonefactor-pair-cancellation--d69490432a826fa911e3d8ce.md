# normalized_hadamardGenusOneFactor_pair_cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:397fd2bf-a359-0f79-5a81-4fa42d38258a",
  "kind": "theorem",
  "lexical_name": "normalized_hadamardGenusOneFactor_pair_cancellation",
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
  "slug": "normalized-hadamardgenusonefactor-pair-cancellation--d69490432a826fa911e3d8ce",
  "source": {
    "blob": "3e9f467853a59ff75ff7afdf24a0b8e2b31e8fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d69490432a826fa911e3d8ce279c3b75d43cd29a41b43daee875aa83dd4e542e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:397fd2bf-a359-0f79-5a81-4fa42d38258a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_hadamardGenusOneFactor_pair_cancellation (α w₀ w : ℂ)
    (hα : α ≠ 0) (hden : α ^ 2 - w₀ ^ 2 ≠ 0) :
    (hadamardGenusOneFactor (w / α) * hadamardGenusOneFactor (w / (-α))) /
        (hadamardGenusOneFactor (w₀ / α) * hadamardGenusOneFactor (w₀ / (-α))) =
      centeredHadamardOrbitBlock w₀ α w := by
  rw [hadamardGenusOneFactor_pair_cancellation α w hα, hadamardGenusOneFactor_pair_cancellation α w₀ hα]
  unfold centeredHadamardOrbitBlock
  field_simp [hα, hden]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HadamardLogDerivative/Variant2cc54da757595e7b5d9fe07143e4932e1cca40470b621d493b6e415088668650.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9f467853a59ff75ff7afdf24a0b8e2b31e8fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
