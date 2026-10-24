# toEven_comp_ofEven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/efea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e665d3f-9c84-6747-bf59-9928dc2e7337",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fe21beb-c9ba-316b-ab71-b98d4972de9f",
  "kind": "theorem",
  "lexical_name": "toEven_comp_ofEven",
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
  "slug": "toeven-comp-ofeven--6080b3fe63513c539d193f74",
  "source": {
    "blob": "f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6080b3fe63513c539d193f7496067627d60828b89e6324e3e6539d14d3755118",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe21beb-c9ba-316b-ab71-b98d4972de9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toEven_comp_ofEven : (toEven Q).comp (ofEven Q) = AlgHom.id R _ :=
  even.algHom_ext (Q' Q) <|
    EvenHom.ext <|
      LinearMap.ext fun m₁ =>
        LinearMap.ext fun m₂ =>
          Subtype.ext <|
            let ⟨m₁, r₁⟩ := m₁
            let ⟨m₂, r₂⟩ := m₂
            calc
              ↑(toEven Q (ofEven Q ((even.ι (Q' Q)).bilin (m₁, r₁) (m₂, r₂)))) =
                  (e0 Q * v Q m₁ + algebraMap R _ r₁) * (e0 Q * v Q m₂ - algebraMap R _ r₂) := by
                rw [ofEven_ι, map_mul, map_add, map_sub, AlgHom.commutes,
                  AlgHom.commutes, Subalgebra.coe_mul, Subalgebra.coe_add, Subalgebra.coe_sub,
                  toEven_ι, toEven_ι, Subalgebra.coe_algebraMap, Subalgebra.coe_algebraMap]
              _ =
                  e0 Q * v Q m₁ * (e0 Q * v Q m₂) + r₁ • e0 Q * v Q m₂ - r₂ • e0 Q * v Q m₁ -
                    algebraMap R _ (r₁ * r₂) := by
                rw [mul_sub, add_mul, add_mul, ← Algebra.commutes, ← Algebra.smul_def, ← map_mul, ←
                  Algebra.smul_def, sub_add_eq_sub_sub, smul_mul_assoc, smul_mul_assoc]
              _ =
                  v Q m₁ * v Q m₂ + r₁ • e0 Q * v Q m₂ + v Q m₁ * r₂ • e0 Q +
                    r₁ • e0 Q * r₂ • e0 Q := by
                have h1 : e0 Q * v Q m₁ * (e0 Q * v Q m₂) = v Q m₁ * v Q m₂ := by
                  rw [← mul_assoc, e0_mul_v_mul_e0]
                have h2 : -(r₂ • e0 Q * v Q m₁) = v Q m₁ * r₂ • e0 Q := by
                  rw [mul_smul_comm, smul_mul_assoc, ← smul_neg, neg_e0_mul_v]
                have h3 : -algebraMap R _ (r₁ * r₂) = r₁ • e0 Q * r₂ • e0 Q := by
                  rw [Algebra.algebraMap_eq_smul_one, smul_mul_smul_comm, e0_mul_e0, smul_neg]
                rw [sub_eq_add_neg, sub_eq_add_neg, h1, h2, h3]
              _ = ι (Q' Q) (m₁, r₁) * ι (Q' Q) (m₂, r₂) := by
                rw [ι_eq_v_add_smul_e0, ι_eq_v_add_smul_e0, mul_add, add_mul, add_mul, add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EvenEquiv/Variantefea7535f7a9325ea2289ad3baf5e4005787edc60fb1e765a686f8f26fd87cbf.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6b6f96aaa1ac702f25e0fa20678fe10725ac9d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
