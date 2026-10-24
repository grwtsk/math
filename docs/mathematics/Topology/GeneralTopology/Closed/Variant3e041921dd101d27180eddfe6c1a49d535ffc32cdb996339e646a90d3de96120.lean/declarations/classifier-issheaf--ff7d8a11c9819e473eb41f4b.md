# classifier_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9fcfeb0a22efcbe2fa9be143358ebe3da94b83c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f70dc72-573b-daa7-a9d2-e7c0fa777e47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fe62717-a70b-0d18-ca32-43eec8f17fdc",
  "kind": "theorem",
  "lexical_name": "classifier_isSheaf",
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
  "slug": "classifier-issheaf--ff7d8a11c9819e473eb41f4b",
  "source": {
    "blob": "e9fcfeb0a22efcbe2fa9be143358ebe3da94b83c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7d8a11c9819e473eb41f4b4b961b85ba26bd814c27cc583b3abf4d783746d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fe62717-a70b-0d18-ca32-43eec8f17fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classifier_isSheaf : Presieve.IsSheaf J₁ (Functor.closedSieves J₁) := by
  intro X S hS
  rw [← Presieve.isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor]
  refine ⟨?_, ?_⟩
  · rintro x ⟨M, hM⟩ ⟨N, hN⟩ hM₂ hN₂
    simp only [Functor.closedSieves_obj]
    ext Y f
    dsimp only [Subtype.coe_mk]
    rw [← J₁.covers_iff_mem_of_isClosed hM, ← J₁.covers_iff_mem_of_isClosed hN]
    have q : ∀ ⦃Z : C⦄ (g : Z ⟶ X) (_ : S g), M.pullback g = N.pullback g :=
      fun Z g hg => congr_arg Subtype.val ((hM₂ g hg).trans (hN₂ g hg).symm)
    have MSNS : M ⊓ S = N ⊓ S := by
      ext Z g
      rw [Sieve.inter_apply, Sieve.inter_apply]
      simp only [and_comm]
      apply and_congr_right
      intro hg
      rw [Sieve.mem_iff_pullback_eq_top, Sieve.mem_iff_pullback_eq_top, q g hg]
    constructor
    · intro hf
      rw [J₁.covers_iff]
      apply J₁.superset_covering (Sieve.pullback_monotone f inf_le_left)
      rw [← MSNS]
      apply J₁.arrow_intersect f M S hf (J₁.pullback_stable _ hS)
    · intro hf
      rw [J₁.covers_iff]
      apply J₁.superset_covering (Sieve.pullback_monotone f inf_le_left)
      rw [MSNS]
      apply J₁.arrow_intersect f N S hf (J₁.pullback_stable _ hS)
  · intro x hx
    rw [Presieve.compatible_iff_sieveCompatible] at hx
    let M := Sieve.bind S fun Y f hf => (x f hf).1
    have : ∀ ⦃Y⦄ (f : Y ⟶ X) (hf : S f), M.pullback f = (x f hf).1 := by
      intro Y f hf
      apply le_antisymm
      · rintro Z u ⟨W, g, f', hf', hg : (x f' hf').1 _, c⟩
        rw [Sieve.mem_iff_pullback_eq_top,
          ← show (x (u ≫ f) _).1 = (x f hf).1.pullback u from congr_arg Subtype.val (hx f u hf)]
        conv_lhs => congr; congr; rw [← c] -- Porting note: Originally `simp_rw [← c]`
        rw [show (x (g ≫ f') _).1 = _ from congr_arg Subtype.val (hx f' g hf')]
        apply Sieve.pullback_eq_top_of_mem _ hg
      · apply Sieve.le_pullback_bind S fun Y f hf => (x f hf).1
    refine ⟨⟨_, J₁.close_isClosed M⟩, ?_⟩
    intro Y f hf
    simp only [Functor.closedSieves_obj]
    ext1
    dsimp
    rw [← J₁.pullback_close, this _ hf]
    apply le_antisymm (J₁.le_close_of_isClosed le_rfl (x f hf).2) (J₁.le_close _)

/-- If presheaf of `J₁`-closed sieves is a `J₂`-sheaf then `J₁ ≤ J₂`. Note the converse is true by
`classifier_isSheaf` and `isSheaf_of_le`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fcfeb0a22efcbe2fa9be143358ebe3da94b83c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
