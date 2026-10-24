# liftOn'_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df2867ab-eab4-9f39-4c58-de1ff86d0cd2",
  "kind": "theorem",
  "lexical_name": "liftOn'_div",
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
  "slug": "lifton-div--ccf2825a65caf6d170cdea06",
  "source": {
    "blob": "5621ae8ac78dcc7c28fe4318a9ace84d942e30e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 689,
    "path": "GRWTSK/Algebra/Basic/Variant140baa23e0a59aa201b203c696c2559e7a068df276159fe7801d9dfd8a2c3a41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccf2825a65caf6d170cdea06b2dcee4ef025292d86cf408f88be1a2667581d2c",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant140baa23e0a59aa201b203c696c2559e7a068df276159fe7801d9dfd8a2c3a41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2867ab-eab4-9f39-4c58-de1ff86d0cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftOn'_div {P : Sort v} (p q : K[X]) (f : K[X] → K[X] → P) (f0 : ∀ p, f p 0 = f 0 1)
    (H) :
    (RatFunc.liftOn' (algebraMap _ (RatFunc K) p / algebraMap _ _ q)) f @H = f p q := by
  rw [RatFunc.liftOn', liftOn_div _ _ _ f0]
  apply liftOn_condition_of_liftOn'_condition H

/-- Induction principle for `RatFunc K`: if `f p q : P (p / q)` for all `p q : K[X]`,
then `P` holds on all elements of `RatFunc K`.

See also `induction_on'`, which is a recursion principle defined in terms of `RatFunc.mk`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant140baa23e0a59aa201b203c696c2559e7a068df276159fe7801d9dfd8a2c3a41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant140baa23e0a59aa201b203c696c2559e7a068df276159fe7801d9dfd8a2c3a41.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5621ae8ac78dcc7c28fe4318a9ace84d942e30e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
