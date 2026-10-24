# product_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9671,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3fb0dfbd-b0da-410f-6773-7abf8b376b3d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd099b2a-abac-8c42-b787-3beacc94c01f",
  "kind": "theorem",
  "lexical_name": "product_uniform",
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
  "slug": "product-uniform--4bf58972f32fc9e7f6f2c16f",
  "source": {
    "blob": "83a5d40441eb869d9f0da889e21cc8720344470e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 9709,
    "line": 9671,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf58972f32fc9e7f6f2c16fc0309468458fb7a6d81264357a7fa717e1746f35",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd099b2a-abac-8c42-b787-3beacc94c01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9671–9709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_uniform {D E : Expr S} {a b c : S} (h : HasType P Γ (.pi D E) T)
    (hd : HasType P Γ D (.sort a)) (hb : HasType P (D :: Γ) E (.sort b)) (hr : P.rule a b c)
    (hc : Converts T (.sort c))
    (ed : Evaluator (hw := hw) Ω C hno Γ D (.sort a))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) E (.sort b))
    (hC : IsComponent (PrimaryEdge P) C)
    {F B : Nat → Nat} (hud : Uniform Ω C hno ed F) (hub : Uniform Ω C hno eb B) :
    Uniform Ω C hno (product h hd hb hr hc ed eb) (productBound F B) := by
  constructor
  · intro k; unfold productBound; omega
  · intro k e _
    apply parameter_bounded
    intro ha
    dsimp only [product]
    split
    · exact RawValue.bounded_mono (by unfold productBound; omega) (withBase_bounded Ω C hno _ _)
    · exact RawValue.bounded_mono (by unfold productBound; omega) (distinguished_bounded Ω C hno _)
  · intro k e f he hf hef
    constructor
    · apply parameter_level _ _ (e.actual_type_eq hef.1 h)
      exact product_val_level h hd hb hr hc ed eb hC hud hub k e f he hf hef
    · have hp := e.actual_expr_eq hef.1 h
      by_cases hh : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C
      · have hh' : Ω.profile (Expr.pi D E |>.subst f.images).normalForm ∈ C := hp ▸ hh
        simp only [product,hh,hh',ite_true]
        exact productCandidate_level hd hb hr ed eb hC hud hub k e f he hf hef hh
      · have hh' : Ω.profile (Expr.pi D E |>.subst f.images).normalForm ∉ C := hp ▸ hh
        simp only [product,hh,hh',ite_false]
        exact congrArg (Candidates.Top Ω) hp
end PreResult
end

universe u
open Classical
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

/-- The manuscript's finite-bound lemma for every stored typing tree. No
normalization or candidate restriction is imposed on the raw environment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variantf46ad6b0b819263e7a2580a87b219032c022fcc1a38715218cd262045e7cd73d.lean#L9671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83a5d40441eb869d9f0da889e21cc8720344470e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
