# Quotient.finChoice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cb846f68563cddac7fa64d11b9958143708af57bb5297c419a5bfadbc0efc8e",
  "kind": "def",
  "lexical_name": "Quotient.finChoice",
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
  "slug": "quotient-finchoice--0c956d7265d647cbd086d3c1",
  "source": {
    "blob": "b17fc224bbbaf92347a4c55af1b23a75bc9d2c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c956d7265d647cbd086d3c112c62b0f68fa733d30d5c547dc4262948e0b9ff5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cb846f68563cddac7fa64d11b9958143708af57bb5297c419a5bfadbc0efc8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Quotient.finChoice {ι : Type*} [DecidableEq ι] [Fintype ι] {α : ι → Type*}
    [S : ∀ i, Setoid (α i)] (f : ∀ i, Quotient (S i)) : @Quotient (∀ i, α i) (by infer_instance) :=
  Quotient.liftOn
    (@Quotient.recOn _ _ (fun l : Multiset ι => @Quotient (∀ i ∈ l, α i) (by infer_instance))
      Finset.univ.1 (fun l => Quotient.finChoiceAux l fun i _ => f i) (fun a b h => by
      have := fun a => Quotient.finChoiceAux_eq a fun i _ => Quotient.out (f i)
      simp [Quotient.out_eq] at this
      simp [this]
      let g := fun a : Multiset ι =>
        (⟦fun (i : ι) (_ : i ∈ a) => Quotient.out (f i)⟧ : Quotient (by infer_instance))
      apply eq_of_heq
      trans (g a)
      · exact eq_rec_heq (φ := fun l : Multiset ι => @Quotient (∀ i ∈ l, α i) (by infer_instance))
          (Quotient.sound h) (g a)
      · change HEq (g a) (g b); congr 1; exact Quotient.sound h))
    (fun f => ⟦fun i => f i (Finset.mem_univ _)⟧) (fun a b h => Quotient.sound fun i => by apply h)
#align quotient.fin_choice Quotient.finChoice

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Quotient/Variant397f451272456fe7b62a4b7c0304dde65040931c3623d534e4f0bd72c621bdb4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17fc224bbbaf92347a4c55af1b23a75bc9d2c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
