# bddBelow_upperClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4136a6e5-aa25-dabb-c57e-5f5bc9c044d5",
  "kind": "theorem",
  "lexical_name": "bddBelow_upperClosure",
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
  "slug": "bddbelow-upperclosure--bf18efd9ff56c71008a71c09",
  "source": {
    "blob": "1e3cb95bc833dc705b40162573198d07decc949e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1523,
    "line": 1496,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfa505b19f2369d869745901a4558f181f9fc8099ee95e2042a9eed17ac6f8fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf18efd9ff56c71008a71c094da0fc072a02d339a1bc408d980c2a9f0b27968f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfa505b19f2369d869745901a4558f181f9fc8099ee95e2042a9eed17ac6f8fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4136a6e5-aa25-dabb-c57e-5f5bc9c044d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1496–1523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bddBelow_upperClosure : BddBelow (upperClosure s : Set α) ↔ BddBelow s := by
  simp_rw [BddBelow, lowerBounds_upperClosure]
#align bdd_below_upper_closure bddBelow_upperClosure

alias ⟨BddAbove.of_lowerClosure, BddAbove.lowerClosure⟩ := bddAbove_lowerClosure
#align bdd_above.of_lower_closure BddAbove.of_lowerClosure
#align bdd_above.lower_closure BddAbove.lowerClosure

alias ⟨BddBelow.of_upperClosure, BddBelow.upperClosure⟩ := bddBelow_upperClosure
#align bdd_below.of_upper_closure BddBelow.of_upperClosure
#align bdd_below.upper_closure BddBelow.upperClosure

-- Porting note: attribute [protected] doesn't work
-- attribute protected BddAbove.lowerClosure BddBelow.upperClosure

end closure

/-! ### Product -/


section Preorder

variable [Preorder α] [Preorder β]

section

variable {s : Set α} {t : Set β} {x : α × β}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfa505b19f2369d869745901a4558f181f9fc8099ee95e2042a9eed17ac6f8fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfa505b19f2369d869745901a4558f181f9fc8099ee95e2042a9eed17ac6f8fd8.lean#L1496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3cb95bc833dc705b40162573198d07decc949e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
