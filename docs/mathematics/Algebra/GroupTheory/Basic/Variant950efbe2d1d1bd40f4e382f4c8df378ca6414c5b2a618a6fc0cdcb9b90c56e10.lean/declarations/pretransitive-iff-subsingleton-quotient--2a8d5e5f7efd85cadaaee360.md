# pretransitive_iff_subsingleton_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ebb00481e913abf998e0e41e46cab81f848e5b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:706594f7-112e-7ac6-9695-b11edf3abdb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65715852-d6b2-321e-0f0d-a759ecf4f58b",
  "kind": "theorem",
  "lexical_name": "pretransitive_iff_subsingleton_quotient",
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
  "slug": "pretransitive-iff-subsingleton-quotient--2a8d5e5f7efd85cadaaee360",
  "source": {
    "blob": "6ebb00481e913abf998e0e41e46cab81f848e5b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a8d5e5f7efd85cadaaee3603d3cc7a6e37c0216d6f944e616a200ff128b9d2b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65715852-d6b2-321e-0f0d-a759ecf4f58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pretransitive_iff_subsingleton_quotient :
    IsPretransitive G α ↔ Subsingleton (orbitRel.Quotient G α) := by
  refine ⟨fun _ ↦ ⟨fun a b ↦ ?_⟩, fun _ ↦ ⟨fun a b ↦ ?_⟩⟩
  · refine Quot.inductionOn a (fun x ↦ ?_)
    exact Quot.inductionOn b (fun y ↦ Quot.sound <| exists_smul_eq G y x)
  · have h : Quotient.mk (orbitRel G α) b = ⟦a⟧ := Subsingleton.elim _ _
    exact Quotient.eq''.mp h

/-- If `α` is non-empty, an action is pretransitive if and only if the quotient has exactly one
element. -/
@[to_additive "If `α` is non-empty, an additive action is pretransitive if and only if the
quotient has exactly one element."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant950efbe2d1d1bd40f4e382f4c8df378ca6414c5b2a618a6fc0cdcb9b90c56e10.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ebb00481e913abf998e0e41e46cab81f848e5b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
