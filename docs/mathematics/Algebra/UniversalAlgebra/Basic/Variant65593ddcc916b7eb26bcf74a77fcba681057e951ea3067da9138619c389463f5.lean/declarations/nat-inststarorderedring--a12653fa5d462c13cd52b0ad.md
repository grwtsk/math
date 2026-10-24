# Nat.instStarOrderedRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de4596566b8a3349deb9ce2f8ea697015833462855a2af6d1c6d8a4acbed889e",
  "kind": "instance",
  "lexical_name": "Nat.instStarOrderedRing",
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
  "slug": "nat-inststarorderedring--a12653fa5d462c13cd52b0ad",
  "source": {
    "blob": "a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 493,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a12653fa5d462c13cd52b0ad7feb6d71140cca007f4878b439278b7a264d6f83",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de4596566b8a3349deb9ce2f8ea697015833462855a2af6d1c6d8a4acbed889e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Nat.instStarOrderedRing : StarOrderedRing ℕ where
  le_iff a b := by
    have : AddSubmonoid.closure (range fun x : ℕ ↦ x * x) = ⊤ :=
      eq_top_mono
        (AddSubmonoid.closure_mono <| singleton_subset_iff.2 <| mem_range.2 ⟨1, one_mul _⟩)
        Nat.addSubmonoidClosure_one
    simp [this, le_iff_exists_add]

namespace IsStarProjection

section Ring
variable [Ring R] [PartialOrder R] [StarRing R] [StarOrderedRing R] {p : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
