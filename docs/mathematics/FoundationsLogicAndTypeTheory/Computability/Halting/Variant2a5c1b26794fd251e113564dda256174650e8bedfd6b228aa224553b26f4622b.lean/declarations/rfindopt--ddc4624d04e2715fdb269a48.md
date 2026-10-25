# rfindOpt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30c362f4-9fee-16df-9609-c77d9bbe5f7a",
  "kind": "theorem",
  "lexical_name": "rfindOpt",
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
  "slug": "rfindopt--ddc4624d04e2715fdb269a48",
  "source": {
    "blob": "3066fc5f4bc4029ac10780c189c3cdfa82aefa1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc4624d04e2715fdb269a4832aab41ac948fbc57e9e1a1572526cc4359b1929",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30c362f4-9fee-16df-9609-c77d9bbe5f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rfindOpt {n} {f : Vector ℕ (n + 1) → ℕ} (hf : @Partrec' (n + 1) f) :
    @Partrec' n fun v => Nat.rfindOpt fun a => ofNat (Option ℕ) (f (a ::ᵥ v)) :=
  ((rfind <|
        (of_prim (Primrec.nat_sub.comp (_root_.Primrec.const 1) Primrec.vector_head)).comp₁
          (fun n => Part.some (1 - n)) hf).bind
    ((prim Nat.Primrec'.pred).comp₁ Nat.pred hf)).of_eq
    fun v =>
    Part.ext fun b => by
      simp only [Nat.rfindOpt, exists_prop, tsub_eq_zero_iff_le, PFun.coe_val, Part.mem_bind_iff,
        Part.mem_some_iff, Option.mem_def, Part.mem_coe]
      refine'
        exists_congr fun a => (and_congr (iff_of_eq _) Iff.rfl).trans (and_congr_right fun h => _)
      · congr
        funext n
        cases f (n ::ᵥ v) <;> simp [Nat.succ_le_succ]; rfl
      · have := Nat.rfind_spec h
        simp only [Part.coe_some, Part.mem_some_iff] at this
        revert this; cases' f (a ::ᵥ v) with c <;> intro this
        · cases this
        rw [← Option.some_inj, eq_comm]
        rfl
#align nat.partrec'.rfind_opt Nat.Partrec'.rfindOpt

open Nat.Partrec.Code

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Variant2a5c1b26794fd251e113564dda256174650e8bedfd6b228aa224553b26f4622b.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3066fc5f4bc4029ac10780c189c3cdfa82aefa1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
