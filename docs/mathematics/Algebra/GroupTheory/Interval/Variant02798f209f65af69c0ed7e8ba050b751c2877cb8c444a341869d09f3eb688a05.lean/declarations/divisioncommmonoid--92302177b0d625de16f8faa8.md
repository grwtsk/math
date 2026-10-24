# divisionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68de0bb01eaafbd426e5064b377803282cfbf3fe6739b224cb0c27bf81ba93b5",
  "kind": "instance",
  "lexical_name": "divisionCommMonoid",
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
  "slug": "divisioncommmonoid--92302177b0d625de16f8faa8",
  "source": {
    "blob": "45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 587,
    "line": 566,
    "path": "GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92302177b0d625de16f8faa8af6f6623a38aa77266ddb99a8f3c112948accd0c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68de0bb01eaafbd426e5064b377803282cfbf3fe6739b224cb0c27bf81ba93b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–587.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance divisionCommMonoid : DivisionCommMonoid (NonemptyInterval α) :=
  { NonemptyInterval.commMonoid with
    inv := Inv.inv
    div := (· / ·)
    div_eq_mul_inv := fun s t => by
      refine NonemptyInterval.ext _ _ (Prod.ext ?_ ?_) <;>
      exact div_eq_mul_inv _ _
    inv_inv := fun s => by apply NonemptyInterval.ext; exact inv_inv _
    mul_inv_rev := fun s t => by
      refine NonemptyInterval.ext _ _ (Prod.ext ?_ ?_) <;>
      exact mul_inv_rev _ _
    inv_eq_of_mul := fun s t h => by
      obtain ⟨a, b, rfl, rfl, hab⟩ := NonemptyInterval.mul_eq_one_iff.1 h
      rw [inv_pure, inv_eq_of_mul_eq_one_right hab] }

end NonemptyInterval

namespace Interval

variable [OrderedCommGroup α] {s t : Interval α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Interval/Variant02798f209f65af69c0ed7e8ba050b751c2877cb8c444a341869d09f3eb688a05.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a6f65bf63f51f1b4dd889f5d95636ab8eaefb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
