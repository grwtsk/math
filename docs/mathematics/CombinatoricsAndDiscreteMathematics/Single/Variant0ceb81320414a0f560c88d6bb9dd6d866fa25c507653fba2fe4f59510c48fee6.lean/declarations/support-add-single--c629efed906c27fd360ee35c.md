# support_add_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32a649c9-4cf3-2f72-9b89-500e22668b5b",
  "kind": "theorem",
  "lexical_name": "support_add_single",
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
  "slug": "support-add-single--c629efed906c27fd360ee35c",
  "source": {
    "blob": "6a619a37cb40a85e38f5c63f95a445504d234752",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 545,
    "line": 539,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c629efed906c27fd360ee35ca4aaec9aef4b2111eb232cf9da8346ef2c8e8424",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32a649c9-4cf3-2f72-9b89-500e22668b5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–545.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_add_single {a : α} {b : M} {f : α →₀ M} (ha : a ∉ f.support) (hb : b ≠ 0) :
    support (f + single a b) = cons a f.support ha := by
  classical
  have H := support_single_ne_zero a hb
  rw [support_add_eq, H, union_comm, cons_eq_insert, insert_eq]
  rwa [H, disjoint_singleton_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a619a37cb40a85e38f5c63f95a445504d234752` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
