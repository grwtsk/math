# diophFn_compn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c266eeeb-477a-4b96-c009-1bda1da78034",
  "kind": "theorem",
  "lexical_name": "diophFn_compn",
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
  "slug": "diophfn-compn--46e2d67da3696973e9fc2ef8",
  "source": {
    "blob": "4b34c2e2932e388df7b4717a063c3a344dd54ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 456,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46e2d67da3696973e9fc2ef846c3ec00d9625835e076241e4fc98bd3cde9becc",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c266eeeb-477a-4b96-c009-1bda1da78034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophFn_compn :
    ∀ {n} {S : Set (α ⊕ (Fin2 n) → ℕ)} (_ : Dioph S) {f : Vector3 ((α → ℕ) → ℕ) n}
      (_ : VectorAllP DiophFn f), Dioph {v : α → ℕ | (v ⊗ fun i => f i v) ∈ S}
  | 0, S, d, f => fun _ =>
    ext (reindex_dioph _ (id ⊗ Fin2.elim0) d) fun v => by
      dsimp
      -- TODO: `congr! 1; ext` should be equivalent to `congr! 1 with x` but that does not work.
      congr! 1
      ext x; obtain _ | _ | _ := x; rfl
  | succ n, S, d, f =>
    f.consElim fun f fl => by
        simp only [vectorAllP_cons, and_imp]
        exact fun df dfl =>
          have : Dioph {v | (v ∘ inl ⊗ f (v ∘ inl)::v ∘ inr) ∈ S} :=
            ext (diophFn_comp1 (reindex_dioph _ (some ∘ inl ⊗ none :: some ∘ inr) d) <|
                reindex_diophFn inl df)
              fun v => by
                dsimp
                -- TODO: `congr! 1; ext` should be equivalent to `congr! 1 with x`
                -- but that does not work.
                congr! 1
                ext x; obtain _ | _ | _ := x <;> rfl
          have : Dioph {v | (v ⊗ f v::fun i : Fin2 n => fl i v) ∈ S} :=
            @diophFn_compn n {v | (v ∘ inl ⊗ f (v ∘ inl) :: v ∘ inr) ∈ S} this _ dfl
          ext this fun v => by
            dsimp
            congr! 3 with x
            obtain _ | _ | _ := x <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant946859f3ad531e8628d1c178a44dabdbcc6220e70797aad14840b97fb55244dc.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b34c2e2932e388df7b4717a063c3a344dd54ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
