# squareEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d76041f65df05af118da6469353197546942fba1c2abd67d126fe785e15880be",
  "kind": "def",
  "lexical_name": "squareEnergy",
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
  "slug": "squareenergy--de7bd29e856bb2eee8ebd21b",
  "source": {
    "blob": "8a3fe816600203380448f61f152eb18abff552de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de7bd29e856bb2eee8ebd21b79c797f7f2f3d86a2d4afaf8f3040b182f175c47",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d76041f65df05af118da6469353197546942fba1c2abd67d126fe785e15880be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def squareEnergy (G : α → ℝ) (μ : Measure α) : ℝ≥0∞ :=
  ∫⁻ x, (ENNReal.ofReal (G x)) ^ (2 : ℕ) ∂μ

/-- Markov/Chebyshev inequality for a strict square-function superlevel set.
No finiteness assumption is required in the `ENNReal` formulation. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a3fe816600203380448f61f152eb18abff552de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
