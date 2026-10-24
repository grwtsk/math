# monotone_ofReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67f50570-6022-d77a-f166-c61988a52bfe",
  "kind": "lemma",
  "lexical_name": "monotone_ofReal",
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
  "slug": "monotone-ofreal--2dd22e94f00deaff7f3bdfb9",
  "source": {
    "blob": "308ad5ce5cb8a907e133214836d768d18e46d583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dd22e94f00deaff7f3bdfb93ae1c7cdf3b70a3865a5a23765adf97eb4312c25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67f50570-6022-d77a-f166-c61988a52bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotone_ofReal : Monotone ofReal := by
  intro x y hxy
  simp only [ofRealHom_eq_coe, real_le_real, hxy]

end Complex

namespace Mathlib.Meta.Positivity
open Lean Meta Qq Complex
open scoped ComplexOrder

private alias ⟨_, ofReal_pos⟩ := zero_lt_real
private alias ⟨_, ofReal_nonneg⟩ := zero_le_real
private alias ⟨_, ofReal_ne_zero_of_ne_zero⟩ := ofReal_ne_zero

/-- Extension for the `positivity` tactic: `Complex.ofReal` is positive/nonnegative/nonzero if its
input is. -/
@[positivity Complex.ofReal _, Complex.ofReal _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant72de8fba931d20bce2401a1e2b4dc6ac385ab1a274fa825b0864cef242e66e60.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308ad5ce5cb8a907e133214836d768d18e46d583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
