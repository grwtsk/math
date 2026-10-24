# R_instantiate_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:734a50ee-2503-827b-3dd7-ed112cd527fb",
  "kind": "theorem",
  "lexical_name": "R_instantiate_normal",
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
  "slug": "r-instantiate-normal--2c080753424476d868cb0f8f",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13001,
    "line": 12968,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c080753424476d868cb0f8fec8e332f30271e8fbf8c1e4afa3dc0753798870a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:734a50ee-2503-827b-3dd7-ed112cd527fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12968–13001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem R_instantiate_normal {Γ : List (Expr S)} {D E N : Expr S} {a b c : S}
    (hD : HasType P Γ D (.sort a)) (hE : HasType P (D :: Γ) E (.sort b)) (hr : P.rule a b c)
    (n : TypingTree P Γ N D) (hnE : Normal E) (hnN : Normal N)
    (e : Environment (hw := hw) Ω C hno Γ)
    (hg : Profile P Γ (.pi D E) ∈ C) (ha : Ω.profile ((Expr.pi D E).subst e.images) ∈ C)
    (hNC : Ω.profile ((E.instantiate N).subst e.images) ∈ C) :
    R Ω C hno E (e.cons (ContextTower.HasType.subst n.typing e.typed)
      (preEvaluate Ω C hno n e).parameter (preEvaluate Ω C hno n e).parameter_fits) =
    R Ω C hno (E.instantiate N) e := by
  let q := TypingTree.ofTyping hE
  let f := e.cons (ContextTower.HasType.subst n.typing e.typed)
    (preEvaluate Ω C hno n e).parameter (preEvaluate Ω C hno n e).parameter_fits
  let ts := TypingTree.StoredSubstitution.single n
  let qt := q.subst hD.valid (Expr.single N) ts
  have hp := HasType.product hD hE hr
  have hrel : Relevant (P := P) C (D :: Γ) E := ⟨_,hg,.single (.codomain (Profile.triple hw hp))⟩
  have hrelN : Relevant (P := P) C Γ (E.instantiate N) :=
    ⟨_,hg,(Profile.instantiate_product_path hw hp n.typing).reach⟩
  have hgood : ReadGood Ω C q f.images := (normal_good Ω C hw hC q hnE f.images f.typed).2 b rfl hrel
  have hgN : ActiveLayer P C (Ω.profile (D.subst e.images)) → ValGood Ω C n e.images :=
    (normal_good Ω C hw hC n hnN e.images e.typed).1
  have hguard : SubstitutionGuard Ω C (D :: Γ) (Expr.single N) f.images :=
    single_guard Ω C e.images (product_argument_active Ω C hno hC hp n.typing e ha hNC)
  have hfi : f.images = Expr.consSub (N.subst e.images) e.images := by
    funext i; cases i <;> rfl
  have hgR := single_goodReplacement Ω C n e.images hgN
  have hgood' : ReadGood Ω C qt e.images := (goodness_subst Ω C hw q hD.valid (Expr.single N) ts
    e.images e.typed (by simpa only [Expr.comp_single,←hfi] using hguard) hgR).2
      (by simpa only [Expr.comp_single,←hfi] using hgood)
  have heval := (preEvaluate_subst Ω C hno q hD.valid (Expr.single N) ts f e
    (single_assigned Ω C hno n e) hguard).2 hgood
  exact (R_eq_read_normal Ω C hno hC q hnE hrel f).trans (heval.trans
    (R_eq_read_good Ω C hno hC qt hrelN e hgood').symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L12968).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
