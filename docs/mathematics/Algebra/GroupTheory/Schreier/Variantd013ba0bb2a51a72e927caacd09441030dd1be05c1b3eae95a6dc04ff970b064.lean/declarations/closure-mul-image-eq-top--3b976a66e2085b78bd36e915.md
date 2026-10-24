# closure_mul_image_eq_top'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8eab032b-bbbf-396b-24b9-4197ebf3f18a",
  "kind": "theorem",
  "lexical_name": "closure_mul_image_eq_top'",
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
  "slug": "closure-mul-image-eq-top--3b976a66e2085b78bd36e915",
  "source": {
    "blob": "77f35794af373b1db9ddaf4ade6ab841d2fc222a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b976a66e2085b78bd36e915d26b5adf70476156bc3d209129a97a8b8a157612",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8eab032b-bbbf-396b-24b9-4197ebf3f18a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_mul_image_eq_top' [DecidableEq G] {R S : Finset G}
    (hR : (R : Set G) ∈ rightTransversals (H : Set G)) (hR1 : (1 : G) ∈ R)
    (hS : closure (S : Set G) = ⊤) :
    closure (((R * S).image fun g => ⟨_, mul_inv_toFun_mem hR g⟩ : Finset H) : Set H) = ⊤ := by
  rw [Finset.coe_image, Finset.coe_mul]
  exact closure_mul_image_eq_top hR hR1 hS
#align subgroup.closure_mul_image_eq_top' Subgroup.closure_mul_image_eq_top'

variable (H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variantd013ba0bb2a51a72e927caacd09441030dd1be05c1b3eae95a6dc04ff970b064.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77f35794af373b1db9ddaf4ade6ab841d2fc222a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
