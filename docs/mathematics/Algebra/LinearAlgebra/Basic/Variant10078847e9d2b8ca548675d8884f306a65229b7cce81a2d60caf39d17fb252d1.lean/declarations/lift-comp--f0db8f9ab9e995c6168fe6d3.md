# lift_comp_ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3db0b0e8-042b-f1c8-566f-1481cbe46bc1",
  "kind": "theorem",
  "lexical_name": "lift_comp_ι",
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
  "slug": "lift-comp--f0db8f9ab9e995c6168fe6d3",
  "source": {
    "blob": "a223e2127b7995bbceb0ee97ed49545d64401713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0db8f9ab9e995c6168fe6d335d85ce50f75d96f62d05da9d16e45053b9e9826",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3db0b0e8-042b-f1c8-566f-1481cbe46bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_comp_ι (g : CliffordAlgebra Q →ₐ[R] A) :
    lift Q ⟨g.toLinearMap.comp (ι Q), comp_ι_sq_scalar _⟩ = g := by
  -- porting note: removed `rw [lift_symm_apply]; rfl`, changed `convert` to `exact`
  exact (lift Q : _ ≃ (CliffordAlgebra Q →ₐ[R] A)).apply_symm_apply g
#align clifford_algebra.lift_comp_ι CliffordAlgebra.lift_comp_ι

/-- See note [partially-applied ext lemmas]. -/
@[ext high]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant10078847e9d2b8ca548675d8884f306a65229b7cce81a2d60caf39d17fb252d1.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a223e2127b7995bbceb0ee97ed49545d64401713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
