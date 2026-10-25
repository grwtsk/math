# Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06bbc2f2-cf94-dc4c-ea82-6f84db0dd836",
  "kind": "theorem",
  "lexical_name": "Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber",
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
  "slug": "set-wellfoundedon-prod-lex-of-wellfoundedon-fiber--f3192f2cb22c9eee448b7c4e",
  "source": {
    "blob": "4d94bed32a93845a57df4166f151444ff3745a8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 869,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3192f2cb22c9eee448b7c4e95cf6b0a2021a39996952e5e2b46196818e5b2d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06bbc2f2-cf94-dc4c-ea82-6f84db0dd836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 869–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber (hα : s.WellFoundedOn (rα on f))
    (hβ : ∀ a, (s ∩ f ⁻¹' {a}).WellFoundedOn (rβ on g)) :
    s.WellFoundedOn (Prod.Lex rα rβ on fun c => (f c, g c)) := by
  refine' WellFounded.prod_lex_of_wellFoundedOn_fiber hα fun a ↦ (hβ a).onFun.mono (fun b c h ↦ _)
  swap
  exact fun _ x => ⟨x, x.1.2, x.2⟩
  assumption
#align set.well_founded_on.prod_lex_of_well_founded_on_fiber Set.WellFoundedOn.prod_lex_of_wellFoundedOn_fiber

end ProdLex

section SigmaLex

variable {rι : ι → ι → Prop} {rπ : ∀ i, π i → π i → Prop} {f : γ → ι} {g : ∀ i, γ → π i} {s : Set γ}

/-- Stronger version of `psigma.lex_wf`. Instead of requiring `rπ on g` to be well-founded, we only
require it to be well-founded on fibers of `f`.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variant28fd54095da7d18982b44b9833bbad772b7ec0299a2215cb29238f5e85dd4d19.lean#L869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d94bed32a93845a57df4166f151444ff3745a8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
