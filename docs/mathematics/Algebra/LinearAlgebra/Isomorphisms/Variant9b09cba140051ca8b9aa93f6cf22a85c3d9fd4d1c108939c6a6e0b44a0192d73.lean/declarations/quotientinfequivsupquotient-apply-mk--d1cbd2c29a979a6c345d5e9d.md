# quotientInfEquivSupQuotient_apply_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "842f0ca7aeffd55210345de77c6911af22c68d03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9b/9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d75a123-d61f-b8f7-c333-d8b575822337",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ef1e29f-609e-0e01-6d89-5263797a52ac",
  "kind": "theorem",
  "lexical_name": "quotientInfEquivSupQuotient_apply_mk",
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
  "slug": "quotientinfequivsupquotient-apply-mk--d1cbd2c29a979a6c345d5e9d",
  "source": {
    "blob": "842f0ca7aeffd55210345de77c6911af22c68d03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1cbd2c29a979a6c345d5e9d7a722dc15aeac5a6a62f4c0f42d25643b5b127ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ef1e29f-609e-0e01-6d89-5263797a52ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientInfEquivSupQuotient_apply_mk (p p' : Submodule R M) (x : p) :
    let map := inclusion (le_sup_left : p ≤ p ⊔ p')
    quotientInfEquivSupQuotient p p' (Submodule.Quotient.mk x) =
      @Submodule.Quotient.mk R (p ⊔ p' : Submodule R M) _ _ _ (comap (p ⊔ p').subtype p') (map x) :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant9b09cba140051ca8b9aa93f6cf22a85c3d9fd4d1c108939c6a6e0b44a0192d73.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `842f0ca7aeffd55210345de77c6911af22c68d03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
