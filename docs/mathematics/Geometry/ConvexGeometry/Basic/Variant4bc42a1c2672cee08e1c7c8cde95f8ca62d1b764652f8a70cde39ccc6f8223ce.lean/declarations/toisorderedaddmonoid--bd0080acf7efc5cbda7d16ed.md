# toIsOrderedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2abbc524-e4fc-5b8f-0932-0ee1a51ae7f2",
  "kind": "lemma",
  "lexical_name": "toIsOrderedAddMonoid",
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
  "slug": "toisorderedaddmonoid--bd0080acf7efc5cbda7d16ed",
  "source": {
    "blob": "f25b233f3b80e72774972abb137702f61d24401d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 373,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0080acf7efc5cbda7d16edce12250871bda87cb92d580e0ff575022889c0e4",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2abbc524-e4fc-5b8f-0932-0ee1a51ae7f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toIsOrderedAddMonoid (h₁ : S.Pointed) (h₂ : S.Salient) :
    let _ := toPartialOrder S h₁ h₂
    IsOrderedAddMonoid E :=
  let _ := toPartialOrder S h₁ h₂
  { add_le_add_left := by
      intro a b hab c
      change c + b - (c + a) ∈ S
      rw [add_sub_add_left_eq_sub]
      exact hab }

end AddCommGroup

section Module

variable [AddCommMonoid E] [Module 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f25b233f3b80e72774972abb137702f61d24401d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
