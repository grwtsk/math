# lift_erased_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e2eb248-bb09-7ac5-208b-b3b7ef56d11f",
  "kind": "theorem",
  "lexical_name": "lift_erased_step",
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
  "slug": "lift-erased-step--e1342965d69416afb73c432a",
  "source": {
    "blob": "5514d29223fb16c1232d1bbca664d511f492ba3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14235,
    "line": 14197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1342965d69416afb73c432a1fed474ea5146c5a8bfd8a0a617294e1df9331bb",
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

Occurrence: `result:7e2eb248-bb09-7ac5-208b-b3b7ef56d11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14197–14235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_erased_step (h : HasType P Γ M T) {N : PureTypeSystem.Expr S}
    (hr : PureTypeSystem.Beta M.erase N) :
    ∃ M', Beta M M' ∧ M'.erase = N := by
  induction M generalizing Γ T N with
  | var n => cases hr
  | sort s => cases hr
  | app l f a ihf iha =>
      obtain ⟨A, B, hf, ha, _⟩ := h.generation_app
      obtain ⟨D, b, he, rfl⟩ | ⟨f', hstep, rfl⟩ | ⟨a', hstep, rfl⟩ := erased_app_step hr
      · obtain ⟨k, D', b', rfl, _, hb'⟩ := Expr.erase_lam_inv he
        obtain ⟨B', _, _, _, hc⟩ := hf.generation_lam
        have hl := hc.product_compatibility.1
        subst k
        refine ⟨b'.instantiate a, .head l D' b' a, ?_⟩
        simp only [Expr.erase_instantiate, hb']
      · obtain ⟨g, hg, he⟩ := ihf hf hstep
        exact ⟨.app l g a, .app_left hg, by simp only [Expr.erase, he]⟩
      · obtain ⟨b, hb, he⟩ := iha ha hstep
        exact ⟨.app l f b, .app_right hb, by simp only [Expr.erase, he]⟩
  | lam l A b ihA ihb =>
      obtain ⟨B, _, hb, hPi, _⟩ := h.generation_lam
      obtain ⟨s, hA⟩ := hPi.product_domain _ _ _ rfl
      cases hr with
      | lam_domain hstep =>
          obtain ⟨D, hD, he⟩ := ihA hA hstep
          exact ⟨.lam l D b, .lam_domain hD, by simp only [Expr.erase, he]⟩
      | lam_body hstep =>
          obtain ⟨e, he, herase⟩ := ihb hb hstep
          exact ⟨.lam l A e, .lam_body he, by simp only [Expr.erase, herase]⟩
  | pi l A B ihA ihB =>
      obtain ⟨_, _, _, hA, hB, _, _⟩ := h.generation_pi
      cases hr with
      | pi_domain hstep =>
          obtain ⟨D, hD, he⟩ := ihA hA hstep
          exact ⟨.pi l D B, .pi_domain hD, by simp only [Expr.erase, he]⟩
      | pi_body hstep =>
          obtain ⟨E, hE, he⟩ := ihB hB hstep
          exact ⟨.pi l A E, .pi_body hE, by simp only [Expr.erase, he]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrowImportsIncomplete/Variant85870e4cacae86a900494b180de1b67dfbb5d6c62f62e5d86c466bc3309a2848.lean#L14197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5514d29223fb16c1232d1bbca664d511f492ba3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
