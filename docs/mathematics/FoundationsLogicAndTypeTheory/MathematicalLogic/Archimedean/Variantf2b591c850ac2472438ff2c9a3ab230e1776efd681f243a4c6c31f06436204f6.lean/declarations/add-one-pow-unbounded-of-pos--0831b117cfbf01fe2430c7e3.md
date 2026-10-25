# add_one_pow_unbounded_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0f79551e110f648bb3d91097d3e75f6237fb555",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10f20a28-c818-ec26-c168-836b21e13fbf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c5abf21-e2a2-3f57-f8d6-7319f38992da",
  "kind": "theorem",
  "lexical_name": "add_one_pow_unbounded_of_pos",
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
  "slug": "add-one-pow-unbounded-of-pos--0831b117cfbf01fe2430c7e3",
  "source": {
    "blob": "d0f79551e110f648bb3d91097d3e75f6237fb555",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0831b117cfbf01fe2430c7e34b2ed65313be64412613856e98fb7ffd0582f1e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c5abf21-e2a2-3f57-f8d6-7319f38992da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_one_pow_unbounded_of_pos [StrictOrderedSemiring α] [Archimedean α] (x : α) {y : α}
    (hy : 0 < y) : ∃ n : ℕ, x < (y + 1) ^ n :=
  have : 0 ≤ 1 + y := add_nonneg zero_le_one hy.le
  (Archimedean.arch x hy).imp fun n h ↦
    calc
      x ≤ n • y := h
      _ = n * y := nsmul_eq_mul _ _
      _ < 1 + n * y := lt_one_add _
      _ ≤ (1 + y) ^ n :=
        one_add_mul_le_pow' (mul_nonneg hy.le hy.le) (mul_nonneg this this)
          (add_nonneg zero_le_two hy.le) _
      _ = (y + 1) ^ n := by rw [add_comm]
#align add_one_pow_unbounded_of_pos add_one_pow_unbounded_of_pos

section StrictOrderedRing

variable [StrictOrderedRing α] [Archimedean α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f79551e110f648bb3d91097d3e75f6237fb555` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
