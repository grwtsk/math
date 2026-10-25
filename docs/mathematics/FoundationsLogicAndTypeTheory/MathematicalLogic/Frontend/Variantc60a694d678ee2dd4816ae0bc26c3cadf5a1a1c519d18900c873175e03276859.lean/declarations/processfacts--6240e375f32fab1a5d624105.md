# processFacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce1d146b7f34b88bbdee2d7ad83d7cf04f9b18453d86984386508a51a11b5bdc",
  "kind": "def",
  "lexical_name": "processFacts",
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
  "slug": "processfacts--6240e375f32fab1a5d624105",
  "source": {
    "blob": "0697a012031c4b77134cc42bd821710396ed7cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 523,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6240e375f32fab1a5d624105b70736c4eb21ee673f812c2354cf285312e49690",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce1d146b7f34b88bbdee2d7ad83d7cf04f9b18453d86984386508a51a11b5bdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def processFacts (p : MetaProblem) : OmegaM (MetaProblem × Nat) := do
  match p.facts with
  | [] => pure (p, 0)
  | h :: t =>
    if p.processedFacts.contains h then
      processFacts { p with facts := t }
    else
      let (p₁, n₁) ← MetaProblem.addFact { p with
        facts := t
        processedFacts := p.processedFacts.insert h } h
      let (p₂, n₂) ← p₁.processFacts
      return (p₂, n₁ + n₂)

end MetaProblem

/--
Helpful error message when omega cannot find a solution
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variantc60a694d678ee2dd4816ae0bc26c3cadf5a1a1c519d18900c873175e03276859.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0697a012031c4b77134cc42bd821710396ed7cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
