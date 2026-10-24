# mem_finsuppAntidiag_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:674b2c4f-a443-07ce-5eb4-113bf7626397",
  "kind": "theorem",
  "lexical_name": "mem_finsuppAntidiag_insert",
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
  "slug": "mem-finsuppantidiag-insert--d92e67b4ef7f0d8178ad96ab",
  "source": {
    "blob": "d334a0b11054857d65b721b7b854b0e98e18754f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 70,
    "path": "GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d92e67b4ef7f0d8178ad96abb4656c783b49f50bedba0e03df4b1396529920bc",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:674b2c4f-a443-07ce-5eb4-113bf7626397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_finsuppAntidiag_insert {a : ι} {s : Finset ι}
    (h : a ∉ s) (n : μ) {f : ι →₀ μ} :
    f ∈ finsuppAntidiag (insert a s) n ↔
      ∃ m ∈ antidiagonal n, ∃ (g : ι →₀ μ),
        f = Finsupp.update g a m.1 ∧ g ∈ finsuppAntidiag s m.2 := by
  simp only [mem_finsuppAntidiag, mem_antidiagonal, Prod.exists, sum_insert h]
  constructor
  · rintro ⟨rfl, hsupp⟩
    refine ⟨_, _, rfl, Finsupp.erase a f, ?_, ?_, ?_⟩
    · rw [update_erase_eq_update, Finsupp.update_self]
    · apply sum_congr rfl
      intro x hx
      rw [Finsupp.erase_ne (ne_of_mem_of_not_mem hx h)]
    · rwa [support_erase, ← subset_insert_iff]
  · rintro ⟨n1, n2, rfl, g, rfl, rfl, hgsupp⟩
    refine ⟨?_, (support_update_subset _ _).trans (insert_subset_insert a hgsupp)⟩
    simp only [coe_update]
    apply congr_arg₂
    · rw [Function.update_self]
    · apply sum_congr rfl
      intro x hx
      rw [update_of_ne (ne_of_mem_of_not_mem hx h) n1 ⇑g]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variantac8674162a85020dae3c76d25defb8e5dbfbd264c5f5b499ac69d3f9ab5806b3.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d334a0b11054857d65b721b7b854b0e98e18754f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
