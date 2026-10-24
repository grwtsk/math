# finSigmaFinEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5d79d8f-ae32-483c-a5d0-3ca33f5b6805",
  "kind": "theorem",
  "lexical_name": "finSigmaFinEquiv_apply",
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
  "slug": "finsigmafinequiv-apply--d91f7a35d0b1c1b10daa6a49",
  "source": {
    "blob": "6fac3f96868091dc6b64672c4eea44ad31cc883b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 702,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91f7a35d0b1c1b10daa6a4999a0d5b2129eb2214043e615fe6b4467376b7cb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5d79d8f-ae32-483c-a5d0-3ca33f5b6805`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finSigmaFinEquiv_apply {m : ℕ} {n : Fin m → ℕ} (k : (i : Fin m) × Fin (n i)) :
    (finSigmaFinEquiv k : ℕ) = ∑ i : Fin k.1, n (Fin.castLE k.1.2.le i) + k.2 := by
  induction m with
  | zero => exact k.fst.elim0
  | succ m ih =>
  rcases k with ⟨⟨iv, hi⟩, j⟩
  rw [finSigmaFinEquiv]
  unfold finSumFinEquiv
  simp only [Equiv.coe_fn_mk, Equiv.sigmaCongrLeft, Equiv.coe_fn_symm_mk, Equiv.trans_def,
    Equiv.trans_apply, finCongr_apply, Fin.val_cast]
  by_cases him : iv < m
  · conv in Sigma.mk _ _ =>
      equals ⟨Sum.inl ⟨iv, him⟩, j⟩ => simp [Fin.addCases, him]
    simpa using! ih _
  · replace him := Nat.eq_of_lt_succ_of_not_lt hi him
    subst him
    conv in Sigma.mk _ _ =>
      equals ⟨Sum.inr 0, j⟩ => simp [Fin.addCases, Fin.natAdd]
    simp
    rfl

/-- `finSigmaFinEquiv` on `Fin 1 × f` is just `f` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fin/Variante1f4cdd6a2b0d9ce1d953cea7e1e5e45b548863d1b1a300ed260e12e1fd11411.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fac3f96868091dc6b64672c4eea44ad31cc883b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
