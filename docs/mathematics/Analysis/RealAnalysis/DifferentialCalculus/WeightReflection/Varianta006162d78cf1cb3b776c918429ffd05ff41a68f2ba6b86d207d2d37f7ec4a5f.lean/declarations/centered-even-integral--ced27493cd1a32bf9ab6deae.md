# centered_even_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c58a0cfe-9f62-d7b4-9dd8-42e3b7f94466",
  "kind": "theorem",
  "lexical_name": "centered_even_integral",
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
  "slug": "centered-even-integral--ced27493cd1a32bf9ab6deae",
  "source": {
    "blob": "bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 232,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced27493cd1a32bf9ab6deaef2ab600b7fc611c77376039b13075f3a9c95887a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c58a0cfe-9f62-d7b4-9dd8-42e3b7f94466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_even_integral (r : DilationRealization) (A : Set.Ici (1 : ℝ))
    (hsector : SectorIntegrability r A) :
    (∫ t in lowerEndpoint..2 * A,
      (evenPart lowerEndpoint (2 * A) errorProfile t + 2) * evenWeight r A t) =
      (∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t) +
      2 * (∫ t in lowerEndpoint..2 * A, evenWeight r A t) := by
  calc
    _ = ∫ t in lowerEndpoint..2 * A,
        evenPart lowerEndpoint (2 * A) errorProfile t * evenWeight r A t +
          2 * evenWeight r A t := by
      apply intervalIntegral.integral_congr
      intro t _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_add hsector.even_even
        (((even_weight_continuous r A).intervalIntegrable _ _).const_mul 2),
        intervalIntegral.integral_const_mul]

/-- A new general-radius reduction for the original signed pairing. Both sectors
remain present, and the prime-two boundary is exactly the `+2` even-sector shift.
This identity alone does not bound either term or their sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
