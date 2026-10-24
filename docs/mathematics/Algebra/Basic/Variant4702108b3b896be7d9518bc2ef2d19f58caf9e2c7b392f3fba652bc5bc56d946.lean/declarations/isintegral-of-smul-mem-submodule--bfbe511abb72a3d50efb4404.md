# isIntegral_of_smul_mem_submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3851eca4-0475-2a99-31d5-4192ac7a06ed",
  "kind": "theorem",
  "lexical_name": "isIntegral_of_smul_mem_submodule",
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
  "slug": "isintegral-of-smul-mem-submodule--bfbe511abb72a3d50efb4404",
  "source": {
    "blob": "d5b987c4cc00e33cd73ed9d0e645104fc761bcf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 96,
    "path": "GRWTSK/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfbe511abb72a3d50efb4404f9cd8436423edd88d14da4eba4432667f3a01e64",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3851eca4-0475-2a99-31d5-4192ac7a06ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegral_of_smul_mem_submodule {M : Type*} [AddCommGroup M] [Module R M] [Module A M]
    [IsScalarTower R A M] [NoZeroSMulDivisors A M] (N : Submodule R M) (hN : N ≠ ⊥) (hN' : N.FG)
    (x : A) (hx : ∀ n ∈ N, x • n ∈ N) : IsIntegral R x := by
  let A' : Subalgebra R A :=
    { carrier := { x | ∀ n ∈ N, x • n ∈ N }
      mul_mem' := fun {a b} ha hb n hn => smul_smul a b n ▸ ha _ (hb _ hn)
      one_mem' := fun n hn => (one_smul A n).symm ▸ hn
      add_mem' := fun {a b} ha hb n hn => (add_smul a b n).symm ▸ N.add_mem (ha _ hn) (hb _ hn)
      zero_mem' := fun n _hn => (zero_smul A n).symm ▸ N.zero_mem
      algebraMap_mem' := fun r n hn => (algebraMap_smul A r n).symm ▸ N.smul_mem r hn }
  let f : A' →ₐ[R] Module.End R N :=
    AlgHom.ofLinearMap
      { toFun := fun x => (DistribMulAction.toLinearMap R M x).restrict x.prop
        -- Porting note: was
                -- `fun x y => LinearMap.ext fun n => Subtype.ext <| add_smul x y n`
        map_add' := by intros x y; ext; exact add_smul _ _ _
        -- Porting note: was
                --  `fun r s => LinearMap.ext fun n => Subtype.ext <| smul_assoc r s n`
        map_smul' := by intros r s; ext; apply smul_assoc }
      -- Porting note: the next two lines were
      --`(LinearMap.ext fun n => Subtype.ext <| one_smul _ _) fun x y =>`
      --`LinearMap.ext fun n => Subtype.ext <| mul_smul x y n`
      (by ext; apply one_smul)
      (by intros x y; ext; apply mul_smul)
  obtain ⟨a, ha₁, ha₂⟩ : ∃ a ∈ N, a ≠ (0 : M) := by
    by_contra! h'
    apply hN
    rwa [eq_bot_iff]
  have : Function.Injective f := by
    show Function.Injective f.toLinearMap
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro s hs
    have : s.1 • a = 0 := congr_arg Subtype.val (LinearMap.congr_fun hs ⟨a, ha₁⟩)
    exact Subtype.ext ((eq_zero_or_eq_zero_of_smul_eq_zero this).resolve_right ha₂)
  show IsIntegral R (A'.val ⟨x, hx⟩)
  rw [isIntegral_algHom_iff A'.val Subtype.val_injective, ← isIntegral_algHom_iff f this]
  haveI : Module.Finite R N := by rwa [Module.finite_def, Submodule.fg_top]
  apply Algebra.IsIntegral.isIntegral

variable {f}

@[stacks 00GK]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant4702108b3b896be7d9518bc2ef2d19f58caf9e2c7b392f3fba652bc5bc56d946.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b987c4cc00e33cd73ed9d0e645104fc761bcf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
