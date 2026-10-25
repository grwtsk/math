# equiv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdb86f13-b028-db83-7254-762c275e1387",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b0f2129-be7e-5656-b149-1ca1aa107fc4",
  "kind": "theorem",
  "lexical_name": "equiv_iff",
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
  "slug": "equiv-iff--dc6ed6a27ac583e2aee4a71d",
  "source": {
    "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6ed6a27ac583e2aee4a71d583baf4e3175d1ea537f441ec836eb3487f73fbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b0f2129-be7e-5656-b149-1ca1aa107fc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_iff {x y : Σˣ f} {i : ι} (hx : x.1 ≤ i) (hy : y.1 ≤ i) :
    x ≈ y ↔ (f x.1 i hx) x.2 = (f y.1 i hy) y.2 := by
  cases x
  cases y
  refine' ⟨fun xy => _, fun xy => ⟨i, hx, hy, xy⟩⟩
  obtain ⟨j, _, _, h⟩ := xy
  obtain ⟨k, ik, jk⟩ := directed_of (· ≤ ·) i j
  have h := congr_arg (f j k jk) h
  apply (f i k ik).injective
  rw [DirectedSystem.map_map, DirectedSystem.map_map] at *
  exact h
#align first_order.language.direct_limit.equiv_iff FirstOrder.Language.DirectLimit.equiv_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b50ab0f3ee9643076321f1ca8698fdd722f902e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
