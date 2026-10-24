# gammaSet_one_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00fcf12e8d2fe23dc81cb2654ebd45c1552060545642e1beb986b66336dbd3a6",
  "kind": "def",
  "lexical_name": "gammaSet_one_equiv",
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
  "slug": "gammaset-one-equiv--abb17d167a6616cb823eb21b",
  "source": {
    "blob": "1fbde4cff98ad90c43898127b6abb747cb7612b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abb17d167a6616cb823eb21b88310f6f1549308a5afae75e73a976a54dbcfe58",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00fcf12e8d2fe23dc81cb2654ebd45c1552060545642e1beb986b66336dbd3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def gammaSet_one_equiv (a a' : Fin 2 → ZMod 1) : gammaSet 1 a ≃ gammaSet 1 a' :=
  Equiv.setCongr (gammaSet_one_eq a a')

end gammaSet_def

variable {N a}

section gamma_action

/-- Right-multiplying by `γ ∈ SL(2, ℤ)` sends `gammaSet N a` to `gammaSet N (a ᵥ* γ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Defs/Variant8aa85ed923834d09f82dffb752ccd8882b3fedbaab85ad98cefce0cd99ab2e84.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbde4cff98ad90c43898127b6abb747cb7612b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
