# exists_lt_card_finite_nth_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad0b5deb-83d4-18d7-4d15-19c8b15378e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2cd2d095-649d-b73b-fa6c-8c4e31913e1f",
  "kind": "theorem",
  "lexical_name": "exists_lt_card_finite_nth_eq",
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
  "slug": "exists-lt-card-finite-nth-eq--7ed26d8ae887880685a16659",
  "source": {
    "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ed26d8ae887880685a166591003205cb16c3a29480f804b5899f1074b166f4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cd2d095-649d-b73b-fa6c-8c4e31913e1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_card_finite_nth_eq (hf : (setOf p).Finite) {x} (h : p x) :
    ∃ n, n < #hf.toFinset ∧ nth p n = x := by
  rwa [← @Set.mem_setOf_eq _ _ p, ← image_nth_Iio_card hf] at h

/-!
### Lemmas about `Nat.nth` on an infinite set
-/

/-- When `s` is an infinite set, `nth` agrees with `Nat.Subtype.orderIsoOfNat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9062ecc0f5dd233f03b73050d057b5fa46a15d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
