# VerifiedGlobalMin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86595423e354decfed86e2ad911deb565d74c1e1ca344614235c323083cf0457",
  "kind": "structure",
  "lexical_name": "VerifiedGlobalMin",
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
  "slug": "verifiedglobalmin--efdea8c65c9823849718e523",
  "source": {
    "blob": "d27d01921b9b06bf6c9fdcc91da9637dd54677c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efdea8c65c9823849718e52389a8174b6e9edeeecb0626e07b6373b9d01af95e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86595423e354decfed86e2ad911deb565d74c1e1ca344614235c323083cf0457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure VerifiedGlobalMin (expr : Expr) (domain : Box) where
  /-- The verified lower bound -/
  bound : ℚ
  /-- Upper bound on the minimum (for convergence info) -/
  upperBound : ℚ
  /-- Box containing a near-minimizer -/
  minimizerBox : Box
  /-- Number of iterations used -/
  iterations : Nat
  /-- Proof that bound is a valid lower bound -/
  is_lower_bound : ∀ (ρ : Nat → ℝ), Box.envMem ρ domain →
                   (∀ i, i ≥ domain.length → ρ i = 0) →
                   (bound : ℝ) ≤ Expr.eval ρ expr

/-- Width of the bound interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant67fa23bf102398ba73a5cba735366ddee666ee8c5d0082d6466a804e02f29e7b.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d27d01921b9b06bf6c9fdcc91da9637dd54677c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
