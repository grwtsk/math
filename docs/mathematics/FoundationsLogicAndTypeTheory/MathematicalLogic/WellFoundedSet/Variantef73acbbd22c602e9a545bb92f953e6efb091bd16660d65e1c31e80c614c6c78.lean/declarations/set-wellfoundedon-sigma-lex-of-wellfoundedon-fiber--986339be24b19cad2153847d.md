# Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79b78605-993a-166d-6f08-676849c15ff4",
  "kind": "theorem",
  "lexical_name": "Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber",
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
  "slug": "set-wellfoundedon-sigma-lex-of-wellfoundedon-fiber--986339be24b19cad2153847d",
  "source": {
    "blob": "0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 980,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:986339be24b19cad2153847d83b5d8c8a6c628efe62f69981aace0f91318d92f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79b78605-993a-166d-6f08-676849c15ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 980–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber (hι : s.WellFoundedOn (rι on f))
    (hπ : ∀ i, (s ∩ f ⁻¹' {i}).WellFoundedOn (rπ i on g i)) :
    s.WellFoundedOn (Sigma.Lex rι rπ on fun c => ⟨f c, g (f c) c⟩) := by
  change WellFounded (Sigma.Lex rι rπ on fun c : s => ⟨f c, g (f c) c⟩)
  exact
    @WellFounded.sigma_lex_of_wellFoundedOn_fiber _ s _ _ rπ (fun c => f c) (fun i c => g _ c) hι
      fun i => ((hπ i).onFun (f := fun x => ⟨x, x.1.2, x.2⟩)).mono (fun b c h => ‹_›)

end SigmaLex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean#L980).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
