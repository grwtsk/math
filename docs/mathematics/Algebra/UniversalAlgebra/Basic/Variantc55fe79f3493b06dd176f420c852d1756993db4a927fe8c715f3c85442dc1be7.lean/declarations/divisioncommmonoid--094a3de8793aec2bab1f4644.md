# divisionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:527eac27d7bbcfb1aab64253b855989d087a1ce3b3d221e7997df89dc12acedf",
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
  "slug": "divisioncommmonoid--094a3de8793aec2bab1f4644",
  "source": {
    "blob": "57096ba027d71c9811f559da0873b91f1ec72028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 557,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:094a3de8793aec2bab1f464401e1a44315cb6f4c925f359fe2f0db9340f1fad0",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:527eac27d7bbcfb1aab64253b855989d087a1ce3b3d221e7997df89dc12acedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance divisionCommMonoid : DivisionCommMonoid (Interval α) :=
  { Interval.commMonoid with
    inv := Inv.inv
    div := (· / ·)
    div_eq_mul_inv := by
      rintro (_ | s) (_ | t) <;> first |rfl|exact congr_arg some (div_eq_mul_inv _ _)
    inv_inv := by rintro (_ | s) <;> first |rfl|exact congr_arg some (inv_inv _)
    mul_inv_rev := by rintro (_ | s) (_ | t) <;> first |rfl|exact congr_arg some (mul_inv_rev _ _)
    inv_eq_of_mul := by
      rintro (_ | s) (_ | t) h <;>
        first
          | cases h
          | exact congr_arg some (inv_eq_of_mul_eq_one_right <| Option.some_injective _ h) }

end Interval

section Length

variable [AddCommGroup α] [PartialOrder α] [IsOrderedAddMonoid α]

namespace NonemptyInterval

variable (s t : NonemptyInterval α) (a : α)

/-- The length of an interval is its first component minus its second component. This measures the
accuracy of the approximation by an interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc55fe79f3493b06dd176f420c852d1756993db4a927fe8c715f3c85442dc1be7.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57096ba027d71c9811f559da0873b91f1ec72028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
