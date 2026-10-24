# actual_dilated_class_mellin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b53a441-c91f-f7cc-7d4e-04aa0295ce93",
  "kind": "theorem",
  "lexical_name": "actual_dilated_class_mellin",
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
  "slug": "actual-dilated-class-mellin--c737f456f401100363d355dc",
  "source": {
    "blob": "b01feeb780b6d7a53e2a7d63e2383ae5d1b2638e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c737f456f401100363d355dc6757784be71f39fed92d0acb9dc540586e9742d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b53a441-c91f-f7cc-7d4e-04aa0295ce93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_dilated_class_mellin (A : ℝ) (hA : 1 ≤ A)
    (a : ℝ) (ha : 0 < a) (s : ℂ) :
    mellin (dilate a ha (actualComplexL2 A hA)) s =
      (a:ℂ)^((1:ℂ)/2-s) * mellin (actualComplexOperator A) s := by
  rw [←actual_normalized_mellin A a ha s]
  apply integral_congr_ae
  filter_upwards [dilate_actual_ae A hA a ha] with x hx
  exact congrArg (fun z : ℂ => (x:ℂ)^(s-1) • z) hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMellinDilationAttempt05/Variantff76cd8a6833c92fba95686a3261c97c85a19faf5dd5bcbbd41968d2e5acb5f8.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b01feeb780b6d7a53e2a7d63e2383ae5d1b2638e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
