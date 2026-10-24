# greatest_maximizer_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1796d803-8bd0-c324-54a6-0fd4beb08d97",
  "kind": "theorem",
  "lexical_name": "greatest_maximizer_fixed",
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
  "slug": "greatest-maximizer-fixed--199c4bac9749adda890c79e1",
  "source": {
    "blob": "8c43ee98a080d8dcbae798644861a28061e35413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199c4bac9749adda890c79e15e2a8bd9c09fae578513c37b68d317c1a624b0d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1796d803-8bd0-c324-54a6-0fd4beb08d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem greatest_maximizer_fixed {f : α → ℝ} {g : α}
    (hg : IsGreatest {x | IsMaximizer f x} g)
    (e : α ≃o α) (hpreserve : ∀ x, f (e x) = f x) : e g = g := by
  have heg : IsMaximizer f (e g) := by
    intro y
    simpa only [hpreserve] using hg.1 y
  have hsymg : IsMaximizer f (e.symm g) := by
    intro y
    have heq : f g = f (e.symm g) := by
      simpa only [e.apply_symm_apply] using hpreserve (e.symm g)
    exact (hg.1 y).trans heq.le
  apply le_antisymm (hg.2 heg)
  simpa only [e.apply_symm_apply] using e.monotone (hg.2 hsymg)

/-- The unique greatest maximizer is fixed simultaneously by every specified
defect-preserving lattice symmetry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c43ee98a080d8dcbae798644861a28061e35413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
