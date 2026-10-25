# exists_quotient_mk'_sigma_mk'_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:238a41a9-cc92-5a5c-34c0-8d1b6a9658c2",
  "kind": "theorem",
  "lexical_name": "exists_quotient_mk'_sigma_mk'_eq",
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
  "slug": "exists-quotient-mk-sigma-mk-eq--d9e5cc8e15a8b337185f7513",
  "source": {
    "blob": "ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 281,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9e5cc8e15a8b337185f751323337987eab907ac4acd1267f21757fda475e168",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:238a41a9-cc92-5a5c-34c0-8d1b6a9658c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_quotient_mk'_sigma_mk'_eq {α : Type*} [Fintype α] (x : α → DirectLimit G f) :
    ∃ (i : ι) (y : α → G i), x = fun a => ⟦.mk f i (y a)⟧ := by
  obtain ⟨i, hi⟩ := Fintype.bddAbove_range fun a => (x a).out.1
  refine' ⟨i, unify f (Quotient.out ∘ x) i hi, _⟩
  ext a
  rw [Quotient.eq_mk_iff_out, unify]
  generalize_proofs r
  change _ ≈ .mk f i (f (Quotient.out (x a)).fst i r (Quotient.out (x a)).snd)
  have : (.mk f i (f (Quotient.out (x a)).fst i r (Quotient.out (x a)).snd) : Σˣ f).fst ≤ i :=
    le_rfl
  rw [equiv_iff G f (i := i) (hi _) this]
  · simp only [DirectedSystem.map_self]
  exact ⟨a, rfl⟩
#align first_order.language.direct_limit.exists_quotient_mk_sigma_mk_eq FirstOrder.Language.DirectLimit.exists_quotient_mk'_sigma_mk'_eq

variable (L ι)

/-- The canonical map from a component to the direct limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DirectLimit/Variantf6dc00ffffc1c9625c898d2010d6b84c8c046d0e90b347762e87ebfbab7227ec.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea5cede3e3a7cb45e1b97c0e887e0220ccf42fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
