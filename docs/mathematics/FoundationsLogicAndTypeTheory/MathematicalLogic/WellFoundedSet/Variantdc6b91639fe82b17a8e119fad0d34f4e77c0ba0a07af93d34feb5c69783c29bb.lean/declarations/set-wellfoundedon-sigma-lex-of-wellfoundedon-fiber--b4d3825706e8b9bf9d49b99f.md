# Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3f5f22c-dce6-3055-40c8-b1ee94a8ffb3",
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
  "slug": "set-wellfoundedon-sigma-lex-of-wellfoundedon-fiber--b4d3825706e8b9bf9d49b99f",
  "source": {
    "blob": "f81ccd361094b729fb4ea6c4891dcec8b7592b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 949,
    "line": 941,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d3825706e8b9bf9d49b99f4baa9d4752aa27196f2e4a6cd5272234f4239db0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3f5f22c-dce6-3055-40c8-b1ee94a8ffb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 941–949.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.WellFoundedOn.sigma_lex_of_wellFoundedOn_fiber (hι : s.WellFoundedOn (rι on f))
    (hπ : ∀ i, (s ∩ f ⁻¹' {i}).WellFoundedOn (rπ i on g i)) :
    s.WellFoundedOn (Sigma.Lex rι rπ on fun c => ⟨f c, g (f c) c⟩) := by
  show WellFounded (Sigma.Lex rι rπ on fun c : s => ⟨f c, g (f c) c⟩)
  exact
    @WellFounded.sigma_lex_of_wellFoundedOn_fiber _ s _ _ rπ (fun c => f c) (fun i c => g _ c) hι
      fun i => ((hπ i).onFun (f := fun x => ⟨x, x.1.2, x.2⟩)).mono (fun b c h => ‹_›)

end SigmaLex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantdc6b91639fe82b17a8e119fad0d34f4e77c0ba0a07af93d34feb5c69783c29bb.lean#L941).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81ccd361094b729fb4ea6c4891dcec8b7592b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
