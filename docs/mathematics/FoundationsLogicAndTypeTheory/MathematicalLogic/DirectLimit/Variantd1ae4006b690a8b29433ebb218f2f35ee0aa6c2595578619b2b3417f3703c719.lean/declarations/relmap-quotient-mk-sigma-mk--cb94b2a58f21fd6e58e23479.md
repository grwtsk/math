# relMap_quotient_mk'_sigma_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e842ecceb47a423ff6ca7cca4d1e407f8c0e1d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cf6927c-44e4-13cc-eb81-c5c3b893ea70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b481a304-4267-2e8e-a7b3-d739a5c9fca8",
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
  "slug": "relmap-quotient-mk-sigma-mk--cb94b2a58f21fd6e58e23479",
  "source": {
    "blob": "6e842ecceb47a423ff6ca7cca4d1e407f8c0e1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb94b2a58f21fd6e58e23479160cd308eb135db0450ef10a51ac3917a4c2626e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b481a304-4267-2e8e-a7b3-d739a5c9fca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relMap_quotient_mk'_sigma_mk' {n : ℕ} {R : L.Relations n} {i : ι} {x : Fin n → G i} :
    RelMap R (fun a => (⟦.mk f i (x a)⟧ : DirectLimit G f)) = RelMap R x := by
  rw [relMap_quotient_mk']
  obtain ⟨k, _, _⟩ :=
    directed_of (· ≤ ·) i (Classical.choose (Finite.bddAbove_range fun _ : Fin n => i))
  rw [relMap_equiv_unify G f R (fun a => .mk f i (x a)) i]
  rw [unify_sigma_mk_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DirectLimit/Variantd1ae4006b690a8b29433ebb218f2f35ee0aa6c2595578619b2b3417f3703c719.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e842ecceb47a423ff6ca7cca4d1e407f8c0e1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
