# all_simple_of_unit_binding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c0d380d-22cb-413b-4ca4-6a063ecf05ad",
  "kind": "theorem",
  "lexical_name": "all_simple_of_unit_binding",
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
  "slug": "all-simple-of-unit-binding--7f75811d299cc3714105a67b",
  "source": {
    "blob": "bdd3758a97c015385ab8d7381dda0882cfceeaa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f75811d299cc3714105a67b1b560f818dd5fd44702dd383e9b9c2e5b5f94c84",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c0d380d-22cb-413b-4ca4-6a063ecf05ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_simple_of_unit_binding (T : ℝ) {k : ℕ} (rows : Fin k → WeightedInput)
    (b : HeadBinding T rows) (hw : ∀ i, (rows i).weight = 1) :
    ∀ z ∈ heightHead T, multiplicity z = 1 := by
  intro z hz
  obtain ⟨i, hi⟩ := b.index.surjective ⟨z, hz⟩
  have he : (b.index i).1 = z := congrArg Subtype.val hi
  have hm := b.weight_eq i
  rw [he, hw i] at hm
  exact hm.symm

/-- Geometry alone is insufficient: local analytic witnesses AND a source-bound
complete count are still required by this arithmetic-to-canonical adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd3758a97c015385ab8d7381dda0882cfceeaa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
