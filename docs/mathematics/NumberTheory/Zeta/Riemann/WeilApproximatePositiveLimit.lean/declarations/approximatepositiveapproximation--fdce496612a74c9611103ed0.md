# ApproximatePositiveApproximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80dae0956fd5509b372ab7bed9bbbe1830d59643dac75c161e3415cd77964ca3",
  "kind": "structure",
  "lexical_name": "ApproximatePositiveApproximation",
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
  "slug": "approximatepositiveapproximation--fdce496612a74c9611103ed0",
  "source": {
    "blob": "1c9230d38722de6e14d840f4f9b29a058dfed570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 32,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdce496612a74c9611103ed06a65d5c3aca4117cf54fad39ac0874c2c44ac391",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80dae0956fd5509b372ab7bed9bbbe1830d59643dac75c161e3415cd77964ca3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ApproximatePositiveApproximation (T : Type*) (W : T → T → ℝ) where
  approximant : ℕ → T → T → ℝ
  lowerDefect : ℕ → T → ℝ
  lowerDefect_nonnegative : ∀ n f, 0 ≤ lowerDefect n f
  diagonal_lower_bound : ∀ n f, -lowerDefect n f ≤ approximant n f f
  lowerDefect_vanishes :
    ∀ f, VanishesAtInfinity (fun n => lowerDefect n f)
  comparison_vanishes :
    ∀ f g, VanishesAtInfinity (fun n => W f g - approximant n f g)

namespace ApproximatePositiveApproximation

/-- Symmetric scalar correction used only to reach the existing positive-limit
interface.  No bilinearity or Hermitian property is inferred for this correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c9230d38722de6e14d840f4f9b29a058dfed570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
