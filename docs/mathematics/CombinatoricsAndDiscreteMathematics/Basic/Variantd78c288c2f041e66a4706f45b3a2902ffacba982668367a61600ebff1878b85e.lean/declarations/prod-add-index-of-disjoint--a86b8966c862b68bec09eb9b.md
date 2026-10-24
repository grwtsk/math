# prod_add_index_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff1909de-0e92-0d76-baea-e1527d765673",
  "kind": "theorem",
  "lexical_name": "prod_add_index_of_disjoint",
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
  "slug": "prod-add-index-of-disjoint--a86b8966c862b68bec09eb9b",
  "source": {
    "blob": "68625a4a8d7f578828d2749028e4c93c67aa7fc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 554,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd78c288c2f041e66a4706f45b3a2902ffacba982668367a61600ebff1878b85e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a86b8966c862b68bec09eb9bfce7b4c62abfb8f99b4cdb7377045becc99f719a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd78c288c2f041e66a4706f45b3a2902ffacba982668367a61600ebff1878b85e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff1909de-0e92-0d76-baea-e1527d765673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_add_index_of_disjoint [AddCommMonoid M] {f1 f2 : α →₀ M}
    (hd : Disjoint f1.support f2.support) {β : Type*} [CommMonoid β] (g : α → M → β) :
    (f1 + f2).prod g = f1.prod g * f2.prod g := by
  have :
    ∀ {f1 f2 : α →₀ M},
      Disjoint f1.support f2.support → (∏ x ∈ f1.support, g x (f1 x + f2 x)) = f1.prod g :=
    fun hd =>
    Finset.prod_congr rfl fun x hx => by
      simp only [notMem_support_iff.mp (disjoint_left.mp hd hx), add_zero]
  classical simp_rw [← this hd, ← this hd.symm, add_comm (f2 _), Finsupp.prod, support_add_eq hd,
      prod_union hd, add_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd78c288c2f041e66a4706f45b3a2902ffacba982668367a61600ebff1878b85e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd78c288c2f041e66a4706f45b3a2902ffacba982668367a61600ebff1878b85e.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68625a4a8d7f578828d2749028e4c93c67aa7fc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
