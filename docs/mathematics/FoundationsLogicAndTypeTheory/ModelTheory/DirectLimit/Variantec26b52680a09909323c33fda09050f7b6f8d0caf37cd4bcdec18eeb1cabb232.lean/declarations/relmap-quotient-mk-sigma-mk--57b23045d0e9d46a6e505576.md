# relMap_quotient_mk'_sigma_mk'

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
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa9ab7f1-e5a9-c98b-a2c5-904e51c90b5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4406dd7d-d4d7-49cd-6f1f-7f1f67dda228",
  "kind": "theorem",
  "lexical_name": "relMap_quotient_mk'_sigma_mk'",
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
  "slug": "relmap-quotient-mk-sigma-mk--57b23045d0e9d46a6e505576",
  "source": {
    "blob": "7b50ab0f3ee9643076321f1ca8698fdd722f902e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b23045d0e9d46a6e505576ea475ae9ca0a885698ee1bc5722226c7b4e14ce9",
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

Occurrence: `result:4406dd7d-d4d7-49cd-6f1f-7f1f67dda228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relMap_quotient_mk'_sigma_mk' {n : ℕ} {R : L.Relations n} {i : ι} {x : Fin n → G i} :
    RelMap R (fun a => (⟦.mk f i (x a)⟧ : DirectLimit G f)) = RelMap R x := by
  rw [relMap_quotient_mk']
  obtain ⟨k, _, _⟩ :=
    directed_of (· ≤ ·) i (Classical.choose (Fintype.bddAbove_range fun _ : Fin n => i))
  rw [relMap_equiv_unify G f R (fun a => .mk f i (x a)) i]
  rw [unify_sigma_mk_self]
#align first_order.language.direct_limit.rel_map_quotient_mk_sigma_mk FirstOrder.Language.DirectLimit.relMap_quotient_mk'_sigma_mk'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantec26b52680a09909323c33fda09050f7b6f8d0caf37cd4bcdec18eeb1cabb232.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b50ab0f3ee9643076321f1ca8698fdd722f902e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
