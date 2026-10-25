# le_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdad63de-0b1e-25fd-4d26-8d210923b893",
  "kind": "theorem",
  "lexical_name": "le_trans",
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
  "slug": "le-trans--320b0d03961adfb530d6d5c3",
  "source": {
    "blob": "c0881e9be4235d0cc389d66049faef28ad57e00b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Scope/Variant54f4241924deb0cd4498dd11f60bd5cafe503481b244959ffd84931c1e2d521b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320b0d03961adfb530d6d5c3cc1cd1df9b8f4e786147462d86c27f2dfb8c22f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Scope/Variant54f4241924deb0cd4498dd11f60bd5cafe503481b244959ffd84931c1e2d521b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdad63de-0b1e-25fd-4d26-8d210923b893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_trans
    {first second third : OperationalCapability}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third := by
  rcases first_le_second with
    ⟨device₁, purpose₁, snapshot₁, elements₁, effects₁⟩
  rcases second_le_third with
    ⟨device₂, purpose₂, snapshot₂, elements₂, effects₂⟩
  exact
    ⟨device₁.trans device₂,
      purpose₁.trans purpose₂,
      snapshot₁.trans snapshot₂,
      Set.Subset.trans elements₁ elements₂,
      EffectProfile.le_trans effects₁ effects₂⟩

end OperationalCapability

/-- An explicit element neighborhood; no metric threshold is implicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Scope/Variant54f4241924deb0cd4498dd11f60bd5cafe503481b244959ffd84931c1e2d521b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Scope/Variant54f4241924deb0cd4498dd11f60bd5cafe503481b244959ffd84931c1e2d521b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0881e9be4235d0cc389d66049faef28ad57e00b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
