# all_equivalent_future

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9886b99e-187c-9709-7979-878f3ef99866",
  "kind": "theorem",
  "lexical_name": "all_equivalent_future",
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
  "slug": "all-equivalent-future--8bfe347f9e614ca0b1d8ac82",
  "source": {
    "blob": "87031993f06bb06b4c00e9ac6a45851f225a208d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 823,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bfe347f9e614ca0b1d8ac82b9e30ebf13158643ca5159cd50ea7f1c38cb168c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9886b99e-187c-9709-7979-878f3ef99866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_equivalent_future
    (hh : ∀ Δ δ (e : Embedding P Γ γ Δ δ) a,
      HasType P Δ a (T.rename e.names) → WellModed δ a .data →
      Equivalent P Δ δ ((Q.rename (Expr.liftRen e.names)).instantiate a)
        ((R.rename (Expr.liftRen e.names)).instantiate a)) :
    Equivalent P Γ γ (K.code.all T Q) (K.code.all T R) := by
  obtain ⟨s,hs⟩ := K.triple.domain.1
  have fq := L.all_formula_family K hT mT (hT s hs) hQ
  have fr := L.all_formula_family K hT mT (hT s hs) hR
  have forward {U V : Expr S} (hU : L.Family T U) (hV : L.Family T V)
      (hx : ∀ Δ δ (e : Embedding P Γ γ Δ δ) a,
        HasType P Δ a (T.rename e.names) → WellModed δ a .data →
        Equivalent P Δ δ ((U.rename (Expr.liftRen e.names)).instantiate a)
          ((V.rename (Expr.liftRen e.names)).instantiate a)) :
      ∀ Δ δ (e : Embedding P Γ γ Δ δ),
      Proves P Δ δ ((K.code.all T U).rename e.names) →
      Proves P Δ δ ((K.code.all T V).rename e.names) := by
    intro Δ δ e hp
    simp only [QuantifierCode.all_rename] at hp ⊢
    apply (L.rename e).all_map_future (K.rename e) (fun t ht => e.typing (hT t ht))
      (e.moded mT) (hU.rename e) (hV.rename e) ?_ hp
    intro Θ θ f a ha ma hu
    have ha' : HasType P Θ a (T.rename (f.names ∘ e.names)) := by
      simpa only [Expr.rename_comp] using ha
    have he := hx Θ θ (e.comp f) a ha' ma
    have hu' : Proves P Θ θ ((U.rename (Expr.liftRen (f.names ∘ e.names))).instantiate a) := by
      simpa only [Expr.rename_comp,Expr.lifted_comp] using hu
    simpa only [Expr.rename_comp,Expr.lifted_comp,Embedding.comp] using he.1.prove hu'
  exact fq.equivalent_of_future fr (forward hQ hR hh)
    (forward hR hQ (fun Δ δ e a ha ma => (hh Δ δ e a ha ma).symm))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relations/Variant9cc7ddd5bd7605e872e62b370c6c633904d28a6f3c56027f0ef6747c67e7481a.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87031993f06bb06b4c00e9ac6a45851f225a208d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
