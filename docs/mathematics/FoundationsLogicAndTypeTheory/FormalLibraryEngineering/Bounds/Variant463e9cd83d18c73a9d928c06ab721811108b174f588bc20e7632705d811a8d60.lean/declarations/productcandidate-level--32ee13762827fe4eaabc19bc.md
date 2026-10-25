# productCandidate_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00583640-bff2-5712-0782-487c3b0f88de",
  "kind": "theorem",
  "lexical_name": "productCandidate_level",
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
  "slug": "productcandidate-level--32ee13762827fe4eaabc19bc",
  "source": {
    "blob": "88d77715197fee4ac575797eb319b8d5488e6715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1104,
    "line": 1073,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32ee13762827fe4eaabc19bca0e506c7d9697dd1dde91dcb0bc0fbe2cecafd27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00583640-bff2-5712-0782-487c3b0f88de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1073–1104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem productCandidate_level {D E : Expr S} {a b c : S}
    (hd : HasType P Γ D (.sort a)) (hb : HasType P (D :: Γ) E (.sort b)) (hr : P.rule a b c)
    (ed : Evaluator (hw := hw) Ω C hno Γ D (.sort a))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) E (.sort b))
    (hC : IsComponent (PrimaryEdge P) C)
    {F B : Nat → Nat} (hud : Uniform Ω C hno ed F) (hub : Uniform Ω C hno eb B)
    (k : Nat) (e f : Environment (hw := hw) Ω C hno Γ)
    (he : e.Bounded k) (hf : f.Bounded k) (hef : e.LevelEq (productBound F B k) f)
    (hK : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C) :
    (productCandidate hd hb hr ed eb e).val = (productCandidate hd hb hr ed eb f).val := by
  let t := productData hd hb hr e
  let u := productData hd hb hr f
  have hp := e.actual_expr_eq hef.1 (HasType.product hd hb hr)
  have hdu := Expr.pi.inj ((t.product_nf.symm.trans hp).trans u.product_nf)
  have hk : Ω.profile (.pi t.domainNF t.bodyNF) ∈ C := t.product_nf ▸ hK
  apply ProductInstance.candidate_eq hdu.1 hdu.2
  · intro _
    exact (hud.compare k e f he hf (e.level_mono (by unfold productBound; omega) hef)).2
  · intro n hn p hpn hc
    have hnb := t.domain_not_minus hC hn hk hc
    have hbp : Parameter.Bounded Ω C hno k p := Parameter.bounded_of_not_minus hnb hpn
    apply (hub.compare k (t.extend hn p hpn) (u.extend (hdu.1 ▸ hn) p (hdu.1 ▸ hpn)) ?_ ?_ ?_).2
    · dsimp only [ProductInstance.extend]
      exact Environment.bounded_cons _ _ _ _ he hbp
    · dsimp only [ProductInstance.extend]
      exact Environment.bounded_cons _ _ _ _ hf hbp
    · dsimp only [ProductInstance.extend]
      apply Environment.level_cons (e.level_mono (by unfold productBound; omega) hef)
      · exact .refl _
      · exact Parameter.level_refl _ _

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bounds/Variant463e9cd83d18c73a9d928c06ab721811108b174f588bc20e7632705d811a8d60.lean#L1073).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d77715197fee4ac575797eb319b8d5488e6715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
