# subtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c1d1335d5887302d31daf6a68dce663b50dd465b2854af63317954b4cc95b9a",
  "kind": "instance",
  "lexical_name": "subtractionCommMonoid",
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
  "slug": "subtractioncommmonoid--0033d8e6431e7672f7c2e057",
  "source": {
    "blob": "fdc699de8e627c111d51ed44e6e43259ad664e32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 546,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0033d8e6431e7672f7c2e0579c5e9cec486c7b97d23ca96119649c6474c61d9d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c1d1335d5887302d31daf6a68dce663b50dd465b2854af63317954b4cc95b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subtractionCommMonoid {α : Type u}
    [AddCommGroup α] [PartialOrder α] [IsOrderedAddMonoid α] :
    SubtractionCommMonoid (Interval α) :=
  { Interval.addCommMonoid with
    neg := Neg.neg
    sub := Sub.sub
    sub_eq_add_neg := by
      rintro (_ | s) (_ | t) <;> first |rfl|exact congr_arg some (sub_eq_add_neg _ _)
    neg_neg := by rintro (_ | s) <;> first |rfl|exact congr_arg some (neg_neg _)
    neg_add_rev := by rintro (_ | s) (_ | t) <;> first |rfl|exact congr_arg some (neg_add_rev _ _)
    neg_eq_of_add := by
      rintro (_ | s) (_ | t) h <;>
        first
          | cases h
          | exact congr_arg some (neg_eq_of_add_eq_zero_right <| Option.some_injective _ h)
    -- TODO: use a better defeq
    zsmul := zsmulRec }

@[to_additive existing Interval.subtractionCommMonoid]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantd48ecec096dd6016f638519616d9095b260254f41a752d81fb19e97c85b72c40.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc699de8e627c111d51ed44e6e43259ad664e32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
