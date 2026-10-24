# mapExactAuxDelta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2824f13810f55bad75cc66f4535665ddee743dfd2c1ae1ad3c65c70d999612b3",
  "kind": "def",
  "lexical_name": "mapExactAuxDelta",
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
  "slug": "mapexactauxdelta--803d858601dd527b62a22482",
  "source": {
    "blob": "669174773d5962bcafa3dc45e701054efeb360b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 122,
    "path": "GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:803d858601dd527b62a224828739ad3ef20aa999fc146eae962eb87820f64b3a",
  "verification": {
    "reference": "docs/verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2824f13810f55bad75cc66f4535665ddee743dfd2c1ae1ad3c65c70d999612b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def mapExactAuxDelta {n : ℕ} {d : N}
    (hdmem : d ∈ (I ^ (k + n + 1) • ⊤ : Submodule R N)) {y yₙ : M}
    (hd : f y = x (k + n + 1) - d) (hyₙ : f yₙ - x (k + n) ∈ (I ^ (k + n) • ⊤ : Submodule R N)) :
    { d : (I ^ n • ⊤ : Submodule R M)
      | f (yₙ + d) - x (k + n + 1) ∈ (I ^ (k + n + 1) • ⊤ : Submodule R N) } :=
  have h : f (y - yₙ) ∈ (I ^ (k + n) • ⊤ : Submodule R N) := by
    simp only [map_sub, hd]
    convert_to x (k + n + 1) - x (k + n) - d - (f yₙ - x (k + n)) ∈ I ^ (k + n) • ⊤
    · abel
    · refine Submodule.sub_mem _ (Submodule.sub_mem _ ?_ ?_) hyₙ
      · rw [← Submodule.Quotient.eq]
        exact AdicCauchySequence.mk_eq_mk (by omega) _
      · exact (Submodule.smul_mono_left (Ideal.pow_le_pow_right (by omega))) hdmem
  have hincl : I ^ (k + n - k) • (I ^ k • ⊤ ⊓ range f) ≤ I ^ (k + n - k) • (range f) :=
    smul_mono_right _ inf_le_right
  have hyyₙ : y - yₙ ∈ (I ^ n • ⊤ : Submodule R M) := by
    convert_to y - yₙ ∈ (I ^ (k + n - k) • ⊤ : Submodule R M)
    · simp
    · rw [← Submodule.comap_map_eq_of_injective hf (I ^ (k + n - k) • ⊤ : Submodule R M),
        Submodule.map_smul'', Submodule.map_top]
      apply hincl
      rw [← hkn (k + n) (by omega)]
      exact ⟨h, ⟨y - yₙ, rfl⟩⟩
  ⟨⟨y - yₙ, hyyₙ⟩, by simpa [hd, Nat.succ_eq_add_one, Nat.add_assoc]⟩

open Submodule

include hfg in
/-- Inductively construct preimage of cauchy sequence in kernel of `g.adicCompletion I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669174773d5962bcafa3dc45e701054efeb360b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
