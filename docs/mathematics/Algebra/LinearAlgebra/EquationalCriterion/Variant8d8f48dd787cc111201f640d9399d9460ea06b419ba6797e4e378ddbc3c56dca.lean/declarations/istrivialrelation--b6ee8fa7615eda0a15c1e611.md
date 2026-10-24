# IsTrivialRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f2fe5c740502a79ccd6a4f217e29b6d567ffed1720f918d823decb9876bfd9b",
  "kind": "abbrev",
  "lexical_name": "IsTrivialRelation",
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
  "slug": "istrivialrelation--b6ee8fa7615eda0a15c1e611",
  "source": {
    "blob": "efb38c035334c99277479010d811070c82f32d41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6ee8fa7615eda0a15c1e61137d6ded4c746ad051c2b4c6e2f094144ea46f587",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f2fe5c740502a79ccd6a4f217e29b6d567ffed1720f918d823decb9876bfd9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsTrivialRelation : Prop :=
  ∃ (k : ℕ) (a : ι → Fin k → R) (y : Fin k → M),
    (∀ i, x i = ∑ j, a i j • y j) ∧ ∀ j, ∑ i, f i * a i j = 0

variable {f x}

/-- `Module.IsTrivialRelation` is equivalent to the predicate `TensorProduct.VanishesTrivially`
defined in `Mathlib/LinearAlgebra/TensorProduct/Vanishing.lean`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EquationalCriterion/Variant8d8f48dd787cc111201f640d9399d9460ea06b419ba6797e4e378ddbc3c56dca.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efb38c035334c99277479010d811070c82f32d41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
