# isReduced_zmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05a41a6fe4be42df2cba249e322c904daf3f60cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac37072a-a7b6-8779-cd58-ef29aca6a033",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59383d03-ed33-4f95-6570-fa2e61ed8979",
  "kind": "theorem",
  "lexical_name": "isReduced_zmod",
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
  "slug": "isreduced-zmod--fc25897900286abedf9189f8",
  "source": {
    "blob": "05a41a6fe4be42df2cba249e322c904daf3f60cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc25897900286abedf9189f8f919af1982090a900dabd58dd0aa9403f2732246",
  "verification": {
    "reference": "docs/verification/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59383d03-ed33-4f95-6570-fa2e61ed8979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isReduced_zmod {n : ℕ} : IsReduced (ZMod n) ↔ Squarefree n ∨ n = 0 := by
  rw [← RingHom.ker_isRadical_iff_reduced_of_surjective
      (ZMod.ringHom_surjective <| Int.castRingHom <| ZMod n),
      ZMod.ker_intCastRingHom, ← isRadical_iff_span_singleton, isRadical_iff_squarefree_or_zero,
      Int.squarefree_natCast, Nat.cast_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZMod/Variant063c2869dd85ae5750ffb300480d54edbf4483e1eaae60f9daf8529d9348aefa.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a41a6fe4be42df2cba249e322c904daf3f60cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
