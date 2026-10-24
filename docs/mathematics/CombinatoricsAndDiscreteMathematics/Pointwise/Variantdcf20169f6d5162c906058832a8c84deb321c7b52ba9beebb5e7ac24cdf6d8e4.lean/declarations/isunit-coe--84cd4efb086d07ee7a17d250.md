# isUnit_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:446be53d-7031-80bf-69f5-894485eb45b6",
  "kind": "theorem",
  "lexical_name": "isUnit_coe",
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
  "slug": "isunit-coe--84cd4efb086d07ee7a17d250",
  "source": {
    "blob": "6876f3a166c0b2f8b9b2a7a73c50cba1658ce7f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1036,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantdcf20169f6d5162c906058832a8c84deb321c7b52ba9beebb5e7ac24cdf6d8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84cd4efb086d07ee7a17d250e50e94557eb4fd8ae245be3a45f32f6029fed430",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantdcf20169f6d5162c906058832a8c84deb321c7b52ba9beebb5e7ac24cdf6d8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:446be53d-7031-80bf-69f5-894485eb45b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_coe : IsUnit (s : Set α) ↔ IsUnit s := by
  simp_rw [isUnit_iff, Set.isUnit_iff, coe_eq_singleton]
#align finset.is_unit_coe Finset.isUnit_coe
#align finset.is_add_unit_coe Finset.isAddUnit_coe

end DivisionMonoid

/-- `Finset α` is a commutative division monoid under pointwise operations if `α` is. -/
@[to_additive subtractionCommMonoid
      "`Finset α` is a commutative subtraction monoid under pointwise operations if `α` is."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantdcf20169f6d5162c906058832a8c84deb321c7b52ba9beebb5e7ac24cdf6d8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantdcf20169f6d5162c906058832a8c84deb321c7b52ba9beebb5e7ac24cdf6d8e4.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6876f3a166c0b2f8b9b2a7a73c50cba1658ce7f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
