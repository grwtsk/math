# ideal_eq_bot_of_localization'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e96ed1cb-be9b-0d0b-e9a0-12512cdd7965",
  "kind": "theorem",
  "lexical_name": "ideal_eq_bot_of_localization'",
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
  "slug": "ideal-eq-bot-of-localization--14b7f24605f52e54ba69495f",
  "source": {
    "blob": "dd589f84c8b04b906ff0fde13c94399eef57d916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 267,
    "path": "GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14b7f24605f52e54ba69495f3dc21991770925cc982d0ab9539c1958acfbf84b",
  "verification": {
    "reference": "docs/verification/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e96ed1cb-be9b-0d0b-e9a0-12512cdd7965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ideal_eq_bot_of_localization' (I : Ideal R)
    (h : ∀ (J : Ideal R) (hJ : J.IsMaximal),
      Ideal.map (algebraMap R (Localization.AtPrime J)) I = ⊥) :
    I = ⊥ :=
  Ideal.eq_of_localization_maximal fun P hP => by simpa using h P hP
#align ideal_eq_bot_of_localization' ideal_eq_bot_of_localization'

-- TODO: This proof should work for all modules, once we have enough material on submodules of
-- localized modules.
/-- An ideal is trivial if its localization at every maximal ideal is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalProperties/Variant688c02ec0b022438f9b045d92809f27f026a730ae146ca38b6f1b0b8d9d3bc22.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd589f84c8b04b906ff0fde13c94399eef57d916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
