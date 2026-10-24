# modEq_of_xn_modEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc94b024-e1ce-cfe8-2382-6033f6fc4230",
  "kind": "theorem",
  "lexical_name": "modEq_of_xn_modEq",
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
  "slug": "modeq-of-xn-modeq--f11407f052b73be41e62bc1c",
  "source": {
    "blob": "11538141504660b997cf1f4a4eb3f1db224faff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 709,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f11407f052b73be41e62bc1c08cb5c4869b5080b31f23aa0075cf96e5ffb6e56",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc94b024-e1ce-cfe8-2382-6033f6fc4230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modEq_of_xn_modEq {i j n} (ipos : 0 < i) (hin : i ≤ n)
    (h : xn a1 j ≡ xn a1 i [MOD xn a1 n]) :
    j ≡ i [MOD 4 * n] ∨ j + i ≡ 0 [MOD 4 * n] :=
  let j' := j % (4 * n)
  have n4 : 0 < 4 * n := mul_pos (by decide) (ipos.trans_le hin)
  have jl : j' < 4 * n := Nat.mod_lt _ n4
  have jj : j ≡ j' [MOD 4 * n] := by delta ModEq; rw [Nat.mod_eq_of_lt jl]
  have : ∀ j q, xn a1 (j + 4 * n * q) ≡ xn a1 j [MOD xn a1 n] := by
    intro j q; induction q with
    | zero => simp [ModEq.refl]
    | succ q IH =>
      rw [Nat.mul_succ, ← add_assoc, add_comm]
      exact (xn_modEq_x4n_add _ _ _).trans IH
  Or.imp (fun ji : j' = i => by rwa [← ji])
    (fun ji : j' + i = 4 * n =>
      (jj.add_right _).trans <| by
        rw [ji]
        exact dvd_rfl.modEq_zero_nat)
    (eq_of_xn_modEq' a1 ipos hin jl.le <|
      (h.symm.trans <| by
          rw [← Nat.mod_add_div j (4 * n)]
          exact this j' _).symm)

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant55c7250e32363d1a69bd89cab8b5801712469266e668d5676b2a18bdaa350fda.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11538141504660b997cf1f4a4eb3f1db224faff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
