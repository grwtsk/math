# comap_incl_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:589decbc-ed8d-47a3-fc5b-052d4893a8b7",
  "kind": "theorem",
  "lexical_name": "comap_incl_eq_top",
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
  "slug": "comap-incl-eq-top--1838a7fd2b567c8ada93d4c6",
  "source": {
    "blob": "bab1062725dbbf09efb4b4633b99049041573088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 474,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variantf0342f29c002f48a66d1448795038155cd066541593ecbf6b8af5257b23a47f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1838a7fd2b567c8ada93d4c648e81040686d2dc19d6331c25e189c27079ed6c7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variantf0342f29c002f48a66d1448795038155cd066541593ecbf6b8af5257b23a47f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:589decbc-ed8d-47a3-fc5b-052d4893a8b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–479.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem comap_incl_eq_top : I₂.comap I.incl = ⊤ ↔ I ≤ I₂ := by
  rw [← LieSubmodule.toSubmodule_inj, LieIdeal.comap_toSubmodule, LieSubmodule.top_toSubmodule,
    incl_coe]
  simp_rw [toLieSubalgebra_toSubmodule]
  rw [Submodule.comap_subtype_eq_top, LieSubmodule.toSubmodule_le_toSubmodule]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variantf0342f29c002f48a66d1448795038155cd066541593ecbf6b8af5257b23a47f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variantf0342f29c002f48a66d1448795038155cd066541593ecbf6b8af5257b23a47f8.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bab1062725dbbf09efb4b4633b99049041573088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
