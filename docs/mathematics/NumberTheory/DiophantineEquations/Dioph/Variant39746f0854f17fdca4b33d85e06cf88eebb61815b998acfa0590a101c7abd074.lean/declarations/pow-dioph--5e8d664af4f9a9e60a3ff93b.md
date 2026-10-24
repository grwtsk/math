# pow_dioph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2213d94-dec5-6f8c-9a5e-236b26cc9cb7",
  "kind": "theorem",
  "lexical_name": "pow_dioph",
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
  "slug": "pow-dioph--5e8d664af4f9a9e60a3ff93b",
  "source": {
    "blob": "bf1956a14f0558af61d22d906927310f409b5627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 704,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e8d664af4f9a9e60a3ff93bcc78b1b0d253f824e8f6f9aa697de06b0e76f034",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2213d94-dec5-6f8c-9a5e-236b26cc9cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dioph {f g : (α → ℕ) → ℕ} (df : DiophFn f) (dg : DiophFn g) :
    DiophFn fun v => f v ^ g v := by
  have : Dioph {v : Vector3 ℕ 3 |
    v &2 = 0 ∧ v &0 = 1 ∨ 0 < v &2 ∧
    (v &1 = 0 ∧ v &0 = 0 ∨ 0 < v &1 ∧
    ∃ w a t z x y : ℕ,
      (∃ a1 : 1 < a, xn a1 (v &2) = x ∧ yn a1 (v &2) = y) ∧
      x ≡ y * (a - v &1) + v &0 [MOD t] ∧
      2 * a * v &1 = t + (v &1 * v &1 + 1) ∧
      v &0 < t ∧ v &1 ≤ w ∧ v &2 ≤ w ∧
      a * a - ((w + 1) * (w + 1) - 1) * (w * z) * (w * z) = 1)} :=
  (D&2 D= D.0 D∧ D&0 D= D.1) D∨ (D.0 D< D&2 D∧
    ((D&1 D= D.0 D∧ D&0 D= D.0) D∨ (D.0 D< D&1 D∧
    ((D∃) 3 <| (D∃) 4 <| (D∃) 5 <| (D∃) 6 <| (D∃) 7 <| (D∃) 8 <|
    pell_dioph.reindex_dioph (Fin2 9) [&4, &8, &1, &0] D∧
    (D≡ (D&1) (D&0 D* (D&4 D- D&7) D+ D&6) (D&3)) D∧
    D.2 D* D&4 D* D&7 D= D&3 D+ (D&7 D* D&7 D+ D.1) D∧
    D&6 D< D&3 D∧ D&7 D≤ D&5 D∧ D&8 D≤ D&5 D∧
    D&4 D* D&4 D- ((D&5 D+ D.1) D* (D&5 D+ D.1) D- D.1) D* (D&5 D* D&2) D* (D&5 D* D&2) D= D.1))) :)
  exact diophFn_comp2 df dg <| (diophFn_vec _).2 <| Dioph.ext this fun v => Iff.symm <|
    eq_pow_of_pell.trans <| or_congr Iff.rfl <| and_congr Iff.rfl <| or_congr Iff.rfl <|
       and_congr Iff.rfl <|
        ⟨fun ⟨w, a, t, z, a1, h⟩ => ⟨w, a, t, z, _, _, ⟨a1, rfl, rfl⟩, h⟩,
        fun ⟨w, a, t, z, _, _, ⟨a1, rfl, rfl⟩, h⟩ => ⟨w, a, t, z, a1, h⟩⟩

end

end Dioph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1956a14f0558af61d22d906927310f409b5627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
