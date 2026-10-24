# _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.normalizerCondition_iff_only_full_group_self_normalizing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16efb415-35a9-a562-a590-2f34fe829f90",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.normalizerCondition_iff_only_full_group_self_normalizing",
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
  "slug": "root-grwtsk-algebra-grouptheory-characteristic-variantc88b856718c66e413f--2269238427637172e0b2aa8c",
  "source": {
    "blob": "21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 441,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2269238427637172e0b2aa8c80500d413f18db8b22efd05392ef2aec80c6c8c2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16efb415-35a9-a562-a590-2f34fe829f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variantc88b856718c66e413f7f60ec9282910cae79e4d6b0f2a63145b8824325842a22.normalizerCondition_iff_only_full_group_self_normalizing :
    NormalizerCondition G ↔ ∀ H : Subgroup G, H.normalizer = H → H = ⊤ := by
  apply forall_congr'; intro H
  simp only [lt_iff_le_and_ne, le_normalizer, le_top, Ne]
  tauto

variable (H)

end Normalizer

end Subgroup

namespace Group

variable {s : Set G}

/-- Given a set `s`, `conjugatesOfSet s` is the set of all conjugates of
the elements of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantbab9cff04df9f601be06afbd19c42575166eba6a9a09e34aff8cdb13603494e5.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21a3634cf5f0ba2d14d0a7ace9a2497d13f8e2e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
