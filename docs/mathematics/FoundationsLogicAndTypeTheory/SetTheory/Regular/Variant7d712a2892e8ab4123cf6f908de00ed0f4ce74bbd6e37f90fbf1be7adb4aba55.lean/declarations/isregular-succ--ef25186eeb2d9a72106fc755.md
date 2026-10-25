# isRegular_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a19064a-6323-37c8-ff70-354ad19aad3d",
  "kind": "theorem",
  "lexical_name": "isRegular_succ",
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
  "slug": "isregular-succ--ef25186eeb2d9a72106fc755",
  "source": {
    "blob": "09320673682f807d3d701755b33364e24fca3c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef25186eeb2d9a72106fc7554a9d4505bde26acdd273c47e80448c694db0f80b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a19064a-6323-37c8-ff70-354ad19aad3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isRegular_succ {c : Cardinal.{u}} (h : ℵ₀ ≤ c) : IsRegular (succ c) :=
  ⟨h.trans (le_succ c),
    succ_le_of_lt
      (by
        have αe := Cardinal.mk_out (succ c)
        set α := (succ c).out
        rcases ord_eq α with ⟨r, wo, re⟩
        have := isLimit_ord (h.trans (le_succ _))
        rw [← αe, re] at this ⊢
        rcases cof_eq' r this with ⟨S, H, Se⟩
        rw [← Se]
        apply lt_imp_lt_of_le_imp_le fun h => mul_le_mul_right' h c
        rw [mul_eq_self h, ← succ_le_iff, ← αe, ← sum_const']
        refine le_trans ?_ (sum_le_sum (fun (x : S) => card (typein r (x : α))) _ fun i => ?_)
        · simp only [← card_typein, ← mk_sigma]
          exact
            ⟨Embedding.ofSurjective (fun x => x.2.1) fun a =>
                let ⟨b, h, ab⟩ := H a
                ⟨⟨⟨_, h⟩, _, ab⟩, rfl⟩⟩
        · rw [← lt_succ_iff, ← lt_ord, ← αe, re]
          apply typein_lt_type)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7d712a2892e8ab4123cf6f908de00ed0f4ce74bbd6e37f90fbf1be7adb4aba55.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09320673682f807d3d701755b33364e24fca3c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
