# maximizers_inf_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ed3cdd0-c77b-7870-c26b-6c700c854917",
  "kind": "theorem",
  "lexical_name": "maximizers_inf_sup",
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
  "slug": "maximizers-inf-sup--0dae91649f95537ce2092f28",
  "source": {
    "blob": "8c43ee98a080d8dcbae798644861a28061e35413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dae91649f95537ce2092f28d534e617af809d3412b39e90549e3f52344a1b05",
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

Occurrence: `result:8ed3cdd0-c77b-7870-c26b-6c700c854917`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximizers_inf_sup {f : α → ℝ} (hf : Supermodular f)
    {x y : α} (hx : IsMaximizer f x) (hy : IsMaximizer f y) :
    IsMaximizer f (x ⊓ y) ∧ IsMaximizer f (x ⊔ y) := by
  have hsuper := hf x y
  have hxy := hy x
  have hinf := hx (x ⊓ y)
  have hsup := hx (x ⊔ y)
  constructor
  · intro z
    have hz := hx z
    linarith
  · intro z
    have hz := hx z
    linarith

/-- An attained maximum and a finite maximizer set give a unique greatest
maximizer. This variant does not assume that the whole carrier is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/9747002b0cae8cbe7143140a15c61fdf9340667fc8a9fbb1e0a701dacdb1204eMaximalDefect/Varianta65f4600a10e50a481376b6c1d06a2966983be31d2b9702a4bfc11b76d0e6e82.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c43ee98a080d8dcbae798644861a28061e35413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
