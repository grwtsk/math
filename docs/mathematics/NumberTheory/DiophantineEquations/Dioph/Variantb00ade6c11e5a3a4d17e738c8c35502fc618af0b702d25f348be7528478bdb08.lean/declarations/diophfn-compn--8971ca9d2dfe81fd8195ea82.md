# diophFn_compn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ce3adbd-dddb-b5d9-3e62-d804845860bc",
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
  "slug": "diophfn-compn--8971ca9d2dfe81fd8195ea82",
  "source": {
    "blob": "f71afed2b47ebfcc74931ab6af18f84857689f78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 548,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8971ca9d2dfe81fd8195ea82f48ac3c3f7ced02a487e7b371a2bf81a17f0e51c",
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

Occurrence: `result:2ce3adbd-dddb-b5d9-3e62-d804845860bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diophFn_compn :
    ∀ {n} {S : Set (Sum α (Fin2 n) → ℕ)} (_ : Dioph S) {f : Vector3 ((α → ℕ) → ℕ) n}
      (_ : VectorAllP DiophFn f), Dioph {v : α → ℕ | (v ⊗ fun i => f i v) ∈ S}
  | 0, S, d, f => fun _ =>
    ext (reindex_dioph _ (id ⊗ Fin2.elim0) d) fun v => by
      dsimp
      -- Porting note: `congr` use to be enough here
      refine iff_of_eq (congrFun (congrArg Membership.mem ?_) S)
      ext x; obtain _ | _ | _ := x; rfl
  | succ n, S, d, f =>
    f.consElim fun f fl => by
        simp
        exact fun df dfl =>
          have : Dioph {v | (v ∘ inl ⊗ f (v ∘ inl)::v ∘ inr) ∈ S} :=
            ext (diophFn_comp1 (reindex_dioph _ (some ∘ inl ⊗ none::some ∘ inr) d) <|
                reindex_diophFn inl df)
              fun v => by
                dsimp
                -- Porting note: `congr` use to be enough here
                refine iff_of_eq (congrFun (congrArg Membership.mem ?_) S)
                ext x; obtain _ | _ | _ := x <;> rfl
          have : Dioph {v | (v ⊗ f v::fun i : Fin2 n => fl i v) ∈ S} :=
            @diophFn_compn n (fun v => S (v ∘ inl ⊗ f (v ∘ inl)::v ∘ inr)) this _ dfl
          ext this fun v => by
            dsimp;
            -- Porting note: `congr` use to be enough here
            refine iff_of_eq (congrFun (congrArg Membership.mem ?_) S)
            ext x; obtain _ | _ | _ := x <;> rfl
#align dioph.dioph_fn_compn Dioph.diophFn_compn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variantb00ade6c11e5a3a4d17e738c8c35502fc618af0b702d25f348be7528478bdb08.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71afed2b47ebfcc74931ab6af18f84857689f78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
