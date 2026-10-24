# compactnessClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3167efdf211e61361b10fcf4a4da48d7e2abd8bdf6ac9ef52f834aa25a173f16",
  "kind": "def",
  "lexical_name": "compactnessClaim",
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
  "slug": "compactnessclaim--1308de3574cef184009e7771",
  "source": {
    "blob": "26bf04bf6eb7750ece495aed8ff91736deb6c6d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1308de3574cef184009e7771fd5cefe1fc5e75056afd3472f2d1366597ef7d16",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3167efdf211e61361b10fcf4a4da48d7e2abd8bdf6ac9ef52f834aa25a173f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactnessClaim
    (a b : ℝ) (_hab : a ≤ b) :
    BoundaryCalculus.AnalyticClaim
      (compactnessContext a b)
      (Authority.BoundaryKind.custom "real-compactness") where
  label := "Mathlib proof: compactness and extreme-value theorem on Icc"
  statement :=
    IsCompact (Set.Icc a b) ∧
      ∀ f : ℝ → ℝ,
        ContinuousOn f (Set.Icc a b) →
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f y ≤ f x) ∧
          (∃ x ∈ Set.Icc a b,
            ∀ y ∈ Set.Icc a b, f x ≤ f y)

/-- The Mathlib-backed proof certificate for the compactness claim. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compactness/Variant225c3280e0b0e06bb2ef4f74c0d30831c49a2cefad0771990efec9dbab652d3b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26bf04bf6eb7750ece495aed8ff91736deb6c6d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
