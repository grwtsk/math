# IsPRadical.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07007ae41b79517f0f3c9a4f09fbf3f90b7be88e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d8523f2f260485edc13e24d9e3cdb48dff48a855f551770547fbf429bf0df7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83b8dc2d-6603-e785-d53c-3889b4d04ef5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ef7f539-5f07-208e-8f7c-2e4b5a84fd76",
  "kind": "theorem",
  "lexical_name": "IsPRadical.trans",
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
  "slug": "ispradical-trans--7fa12701f47a11c8d71672bc",
  "source": {
    "blob": "07007ae41b79517f0f3c9a4f09fbf3f90b7be88e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantb6d8523f2f260485edc13e24d9e3cdb48dff48a855f551770547fbf429bf0df7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fa12701f47a11c8d71672bcd5509b29208b0b70772f91396e4a9ea08bf73991",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantb6d8523f2f260485edc13e24d9e3cdb48dff48a855f551770547fbf429bf0df7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ef7f539-5f07-208e-8f7c-2e4b5a84fd76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPRadical.trans [IsPRadical i p] [IsPRadical f p] :
    IsPRadical (f.comp i) p where
  pow_mem' x := by
    obtain ⟨n, y, hy⟩ := pow_mem f p x
    obtain ⟨m, z, hz⟩ := pow_mem i p y
    exact ⟨n + m, z, by rw [RingHom.comp_apply, hz, map_pow, hy, pow_add, pow_mul]⟩
  ker_le' x h := by
    rw [RingHom.mem_ker, RingHom.comp_apply, ← RingHom.mem_ker] at h
    simpa only [← Ideal.mem_comap, comap_pNilradical] using ker_le f p h

/-- If `i : K →+* L` is a `p`-radical ring homomorphism, then it makes `L` a perfect closure
of `K`, if `L` is perfect.
In this case the kernel of `i` is equal to the `p`-nilradical of `K`
(see `IsPerfectClosure.ker_eq`).

Our definition makes it synonymous to `IsPRadical` if `PerfectRing L p` is present. A caveat is
that you need to write `[PerfectRing L p] [IsPerfectClosure i p]`. This is similar to
`PerfectRing` which has `ExpChar` as a prerequisite. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantb6d8523f2f260485edc13e24d9e3cdb48dff48a855f551770547fbf429bf0df7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantb6d8523f2f260485edc13e24d9e3cdb48dff48a855f551770547fbf429bf0df7.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07007ae41b79517f0f3c9a4f09fbf3f90b7be88e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
