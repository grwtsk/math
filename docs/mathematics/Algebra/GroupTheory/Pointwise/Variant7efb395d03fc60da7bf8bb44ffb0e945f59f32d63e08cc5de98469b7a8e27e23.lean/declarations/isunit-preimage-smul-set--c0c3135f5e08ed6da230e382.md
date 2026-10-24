# IsUnit.preimage_smul_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8cb7f36-48e2-f0ee-1824-c082d24add8c",
  "kind": "theorem",
  "lexical_name": "IsUnit.preimage_smul_set",
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
  "slug": "isunit-preimage-smul-set--c0c3135f5e08ed6da230e382",
  "source": {
    "blob": "06954a0544f0d7731733937207996bc834720cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 169,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c3135f5e08ed6da230e38228de6a62afe037402637bd85efecf2ca669cffed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8cb7f36-48e2-f0ee-1824-c082d24add8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnit.preimage_smul_set {M α β F : Type*} [Monoid M] [MulAction M α] [MulAction M β]
    [FunLike F α β] [MulActionHomClass F M α β] (f : F) {c : M} (hc : IsUnit c) (t : Set β) :
    f ⁻¹' (c • t) = c • f ⁻¹' t :=
  preimage_smul_setₛₗ_of_isUnit_isUnit f hc hc t

-- TODO: when you remove the next 2 aliases,
-- please move the `Group` version to the root namespace.
@[deprecated (since := "2025-03-04")]
alias preimage_vadd_set := IsAddUnit.preimage_vadd_set

@[deprecated (since := "2025-03-04")]
alias preimage_smul_set := IsUnit.preimage_smul_set

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant7efb395d03fc60da7bf8bb44ffb0e945f59f32d63e08cc5de98469b7a8e27e23.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06954a0544f0d7731733937207996bc834720cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
