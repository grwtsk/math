# NeZero.one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a71f55c80ec6f8bca2d655553a17370d6d2a2567b1846fa2c8269610f9bab498",
  "kind": "instance",
  "lexical_name": "NeZero.one",
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
  "slug": "nezero-one--9c7d99b90673a462cba006c9",
  "source": {
    "blob": "ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c7d99b90673a462cba006c9ac3baa9012c74a34f96b0aff5214e7067e7fc439",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a71f55c80ec6f8bca2d655553a17370d6d2a2567b1846fa2c8269610f9bab498`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NeZero.one : NeZero (1 : M₀) := ⟨by
  intro h
  rcases exists_pair_ne M₀ with ⟨x, y, hx⟩
  apply hx
  calc
    x = 1 * x := by rw [one_mul]
    _ = 0 := by rw [h, zero_mul]
    _ = 1 * y := by rw [h, zero_mul]
    _ = y := by rw [one_mul]⟩

/-- Pullback a `Nontrivial` instance along a function sending `0` to `0` and `1` to `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
