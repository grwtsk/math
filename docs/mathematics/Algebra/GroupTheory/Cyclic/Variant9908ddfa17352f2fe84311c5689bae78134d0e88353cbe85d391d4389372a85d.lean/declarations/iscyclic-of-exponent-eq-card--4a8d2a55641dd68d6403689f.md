# IsCyclic.of_exponent_eq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0c6ea24-d7d8-f938-1229-9800e3442e20",
  "kind": "theorem",
  "lexical_name": "IsCyclic.of_exponent_eq_card",
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
  "slug": "iscyclic-of-exponent-eq-card--4a8d2a55641dd68d6403689f",
  "source": {
    "blob": "b89e4da55d2036fd260491c8c88db2cab4773869",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 679,
    "line": 673,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a8d2a55641dd68d6403689f4ecc47e8e72bde50e83fdd8ae3a82da66535f4cc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0c6ea24-d7d8-f938-1229-9800e3442e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 673–679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCyclic.of_exponent_eq_card [CommGroup α] [Finite α] (h : exponent α = Nat.card α) :
    IsCyclic α :=
  let ⟨_⟩ := nonempty_fintype α
  let ⟨g, _, hg⟩ := Finset.mem_image.mp (Finset.max'_mem _ _)
  isCyclic_of_orderOf_eq_card g <| hg.trans <| exponent_eq_max'_orderOf.symm.trans h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9908ddfa17352f2fe84311c5689bae78134d0e88353cbe85d391d4389372a85d.lean#L673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b89e4da55d2036fd260491c8c88db2cab4773869` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
