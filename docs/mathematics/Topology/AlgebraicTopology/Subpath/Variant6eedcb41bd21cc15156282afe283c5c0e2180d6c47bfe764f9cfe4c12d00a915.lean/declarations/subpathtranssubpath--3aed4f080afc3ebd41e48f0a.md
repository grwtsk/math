# subpathTransSubpath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31981bae317e7eccc518feb4adec69d93aa211812973b482215ef47f96bfe138",
  "kind": "def",
  "lexical_name": "subpathTransSubpath",
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
  "slug": "subpathtranssubpath--3aed4f080afc3ebd41e48f0a",
  "source": {
    "blob": "981761e87fb3cc62d77c0b450f2f348ed6183c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3aed4f080afc3ebd41e48f0aaee60bce466dfc26a0c3c902e812b4a132050616",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31981bae317e7eccc518feb4adec69d93aa211812973b482215ef47f96bfe138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subpathTransSubpath (γ : Path a b) (t₀ t₁ t₂ : I) : Homotopy
    ((γ.subpath t₀ t₁).trans (γ.subpath t₁ t₂)) (γ.subpath t₀ t₂) :=
  trans (subpathTransSubpathRefl γ t₀ t₁ t₂) (transRefl _)

end Homotopy

/-!
## Concatenation of paths
-/

variable {n : ℕ}

/-- Concatenation of a sequence of paths with compatible endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Subpath/Variant6eedcb41bd21cc15156282afe283c5c0e2180d6c47bfe764f9cfe4c12d00a915.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `981761e87fb3cc62d77c0b450f2f348ed6183c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
