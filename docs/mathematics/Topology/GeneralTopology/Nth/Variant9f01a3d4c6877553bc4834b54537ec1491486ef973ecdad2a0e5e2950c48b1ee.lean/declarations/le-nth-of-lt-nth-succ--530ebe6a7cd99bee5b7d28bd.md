# le_nth_of_lt_nth_succ

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
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe584b8a-0c79-735f-c7cd-8fa2684ab131",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0507a98c-20c9-61f0-d692-4eb7f267560d",
  "kind": "theorem",
  "lexical_name": "le_nth_of_lt_nth_succ",
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
  "slug": "le-nth-of-lt-nth-succ--530ebe6a7cd99bee5b7d28bd",
  "source": {
    "blob": "9062ecc0f5dd233f03b73050d057b5fa46a15d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530ebe6a7cd99bee5b7d28bd095fce9cfd73678a71ffd025d81a6becbaa97718",
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

Occurrence: `result:0507a98c-20c9-61f0-d692-4eb7f267560d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_nth_of_lt_nth_succ {k a : ℕ} (h : a < nth p (k + 1)) (ha : p a) : a ≤ nth p k := by
  rcases (setOf p).finite_or_infinite with hf | hf
  · rcases exists_lt_card_finite_nth_eq hf ha with ⟨n, hn, rfl⟩
    rcases lt_or_le (k + 1) #hf.toFinset with hk | hk
    · rwa [(nth_strictMonoOn hf).lt_iff_lt hn hk, Nat.lt_succ_iff,
        ← (nth_strictMonoOn hf).le_iff_le hn (k.lt_succ_self.trans hk)] at h
    · rw [nth_of_card_le _ hk] at h
      exact absurd h (zero_le _).not_lt
  · rcases subset_range_nth ha with ⟨n, rfl⟩
    rwa [nth_lt_nth hf, Nat.lt_succ_iff, ← nth_le_nth hf] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant9f01a3d4c6877553bc4834b54537ec1491486ef973ecdad2a0e5e2950c48b1ee.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9062ecc0f5dd233f03b73050d057b5fa46a15d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
