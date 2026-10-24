# not_soficFactorLanguage_of_unboundedRightContexts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:718e1043-802b-7b67-ece6-c34729ead1e3",
  "kind": "theorem",
  "lexical_name": "not_soficFactorLanguage_of_unboundedRightContexts",
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
  "slug": "not-soficfactorlanguage-of-unboundedrightcontexts--c6464c1374f88925aec56def",
  "source": {
    "blob": "7233696059a408af98af15fec0e34c02f7afb657",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 331,
    "path": "GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6464c1374f88925aec56def5939e4f59d53a90f81ae4bf8632630845eb3bd3e",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:718e1043-802b-7b67-ece6-c34729ead1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_soficFactorLanguage_of_unboundedRightContexts
    {Alphabet : Type v} (language : List Alphabet → Prop)
    (hunbounded : UnboundedRightContexts language) :
    ¬ IsSoficFactorLanguage language := by
  rintro ⟨P⟩
  let N : ℕ := P.stateCapacity + 1
  obtain ⟨words, hdistinguishable⟩ := hunbounded N
  have hbound : N ≤ P.stateCapacity :=
    rightContexts_card_le_exactPresentation
      P N words hdistinguishable
  dsimp [N] at hbound
  omega

/-- A source trace with unbounded full-language continuation contexts
has no exact finite labeled graph presentation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/SymbolicDynamics/ExactSoficLanguageCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DynamicalSystems/Symbolic/ExactSoficLanguageCover.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7233696059a408af98af15fec0e34c02f7afb657` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
