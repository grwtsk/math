# mem_toCycle_iff_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecaf890be3f26f0dae467e744eeb9e57c4f35f02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 385,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c3e31e5fca0d9c7fd7b6f5a5ec38ab5664ebc2d9fbebe95e6e5102cacd8bb3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46c4ed68-a820-f51a-632a-555c7631d629",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e136f959-96e2-a044-1418-0b673b36d5e3",
  "kind": "theorem",
  "lexical_name": "mem_toCycle_iff_support",
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
  "slug": "mem-tocycle-iff-support--3b4fbccfa9838029c62bc554",
  "source": {
    "blob": "ecaf890be3f26f0dae467e744eeb9e57c4f35f02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 385,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3c3e31e5fca0d9c7fd7b6f5a5ec38ab5664ebc2d9fbebe95e6e5102cacd8bb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b4fbccfa9838029c62bc5546120ba21cdf85d4c08b51d515747ff194f68b49b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3c3e31e5fca0d9c7fd7b6f5a5ec38ab5664ebc2d9fbebe95e6e5102cacd8bb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e136f959-96e2-a044-1418-0b673b36d5e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toCycle_iff_support (f : Perm α) (hf : f.IsCycle) : x ∈ f.toCycle hf ↔ f x ≠ x := by
  constructor
  · have ⟨l, hl⟩ := exists_toCycle_toList f hf
    simp only [hl, Cycle.mem_coe_iff, ne_eq]
    intro h
    have ⟨h1, h2⟩ := mem_toList_iff.mp h
    exact ((isCycle_iff_sameCycle (mem_support.mp h2)).mp (y := x) hf).mp h1
  · intro h
    simp only [toCycle_eq_toList f hf x h, Cycle.mem_coe_iff, toList, mem_iterate, iterate_eq_pow]
    use 0
    exact ⟨by simpa, by simp⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3c3e31e5fca0d9c7fd7b6f5a5ec38ab5664ebc2d9fbebe95e6e5102cacd8bb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant3c3e31e5fca0d9c7fd7b6f5a5ec38ab5664ebc2d9fbebe95e6e5102cacd8bb3e.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecaf890be3f26f0dae467e744eeb9e57c4f35f02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
