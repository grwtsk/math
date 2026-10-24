# map_inertia_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82b0b750-64c0-6ab6-60f5-86adb751e21c",
  "kind": "theorem",
  "lexical_name": "map_inertia_of_surjective",
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
  "slug": "map-inertia-of-surjective--340cc8423cebbf349d7e1b94",
  "source": {
    "blob": "8f581c1970d2dd79598cb0c745d054f68d868126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 514,
    "path": "GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:340cc8423cebbf349d7e1b943d3ef3d691831b9542533c5e293d316520c8f1ec",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82b0b750-64c0-6ab6-60f5-86adb751e21c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_inertia_of_surjective (hf_surj : Function.Surjective f) (hf_ker : H ≤ f.ker)
    (hf : ∀ g x, algebraMap R S (f g • x) = g • algebraMap R S x) :
    (q.inertia G).map f = p.inertia G' := by
  have h_stab := (map_stabilizer_of_surjective f H p q hf_surj hf_ker hf).ge
  replace hf_ker (h : H) : f h = 1 := hf_ker h.2
  have : SMulCommClass H R S := ⟨fun h x y ↦ by simp [Algebra.smul_def, H.smul_def, ← hf, hf_ker]⟩
  apply le_antisymm
  · rintro - ⟨g, hg, rfl⟩ x
    simpa [over_def q p, map_sub, hf] using hg (algebraMap R S x)
  · intro g hg
    obtain ⟨g, rfl⟩ : ∃ g' : stabilizer G q, f g' = g := by
      simpa using h_stab.ge (p.inertia_le_stabilizer hg)
    let φ : (S ⧸ q) ≃ₐ[R ⧸ p] (S ⧸ q) :=
    { __ := Quotient.stabilizerHom q (q.under ℤ) G g
      commutes' x := by
        obtain ⟨x, rfl⟩ := Quotient.mk_surjective x
        specialize hg x
        rw [Submodule.mem_toAddSubgroup, over_def q p, mem_under, map_sub, hf, ← Quotient.eq] at hg
        simpa }
    obtain ⟨g', hg'⟩ := Quotient.stabilizerHom_surjective H p q φ
    let v : stabilizer G q := ⟨g', g'.2⟩⁻¹ * g
    refine ⟨v, ?_, by simp [v, hf_ker]⟩
    rw [SetLike.mem_coe, coe_mem_inertia, ← Quotient.ker_stabilizerHom q (q.under ℤ) G,
      MonoidHom.mem_ker, map_mul, map_inv, inv_mul_eq_one]
    rwa [AlgEquiv.ext_iff] at hg' ⊢

variable [MulSemiringAction G R] [SMulDistribClass G R S]
  [H.Normal] [MulSemiringAction (G ⧸ H) R] [IsScalarTower G (G ⧸ H) R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8ef51cd802ee54f13334ec12c995d5009cc2c9b2aa78c3663c52c03d3643bf64.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f581c1970d2dd79598cb0c745d054f68d868126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
