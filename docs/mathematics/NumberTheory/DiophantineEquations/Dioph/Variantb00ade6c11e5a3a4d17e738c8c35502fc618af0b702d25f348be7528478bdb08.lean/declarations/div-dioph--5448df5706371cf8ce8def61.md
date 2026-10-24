# div_dioph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94f5e2a1-6b06-2fa3-b994-692babe286ea",
  "kind": "theorem",
  "lexical_name": "div_dioph",
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
  "slug": "div-dioph--5448df5706371cf8ce8def61",
  "source": {
    "blob": "f71afed2b47ebfcc74931ab6af18f84857689f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 736,
    "line": 710,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5448df5706371cf8ce8def610fbfe2ee3c52796ad8af66760e7ef2aa019686c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94f5e2a1-6b06-2fa3-b994-692babe286ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_dioph : DiophFn fun v => f v / g v :=
  have :
    Dioph fun v : Vector3 ℕ 3 =>
      v &2 = 0 ∧ v &0 = 0 ∨ v &0 * v &2 ≤ v &1 ∧ v &1 < (v &0 + 1) * v &2 :=
    (D&2 D= D.0 D∧ D&0 D= D.0) D∨ D&0 D* D&2 D≤ D&1 D∧ D&1 D< (D&0 D+ D.1) D* D&2
  diophFn_comp2 df dg <|
    (diophFn_vec _).2 <|
      ext this <|
        (vectorAll_iff_forall _).1 fun z x y =>
          show y = 0 ∧ z = 0 ∨ z * y ≤ x ∧ x < (z + 1) * y ↔ x / y = z by
            refine Iff.trans ?_ eq_comm
            exact y.eq_zero_or_pos.elim
              (fun y0 => by
                rw [y0, Nat.div_zero]
                exact ⟨fun o => (o.resolve_right fun ⟨_, h2⟩ => Nat.not_lt_zero _ h2).right,
                  fun z0 => Or.inl ⟨rfl, z0⟩⟩)
              fun ypos =>
                Iff.trans ⟨fun o => o.resolve_left fun ⟨h1, _⟩ => Nat.ne_of_gt ypos h1, Or.inr⟩
                  (le_antisymm_iff.trans <| and_congr (Nat.le_div_iff_mul_le ypos) <|
                    Iff.trans ⟨lt_succ_of_le, le_of_lt_succ⟩ (div_lt_iff_lt_mul ypos)).symm
#align dioph.div_dioph Dioph.div_dioph

-- mathport name: div_dioph
scoped infixl:80 " D/ " => Dioph.div_dioph

open Pell

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71afed2b47ebfcc74931ab6af18f84857689f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
