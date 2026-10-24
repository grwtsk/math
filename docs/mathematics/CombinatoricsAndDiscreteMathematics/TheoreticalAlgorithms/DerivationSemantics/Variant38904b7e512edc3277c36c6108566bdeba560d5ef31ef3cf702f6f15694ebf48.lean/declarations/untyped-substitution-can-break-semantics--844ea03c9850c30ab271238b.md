# untyped_substitution_can_break_semantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd43b4fa-0089-9933-eb1b-1e4ebe329f00",
  "kind": "theorem",
  "lexical_name": "untyped_substitution_can_break_semantics",
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
  "slug": "untyped-substitution-can-break-semantics--844ea03c9850c30ab271238b",
  "source": {
    "blob": "6b08a4465e706e692df0cdc89450745055189a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 304,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:844ea03c9850c30ab271238bfa0641ca7fb70cc9a393722c1721f1de0bac875b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd43b4fa-0089-9933-eb1b-1e4ebe329f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem untyped_substitution_can_break_semantics :
    RepresentationDerivable erasingDeclaration (.nullary ⟨2⟩) AssemblyFixtures.atomTerm ∧
    evaluateTerm singletonTable [] (.nullary ⟨2⟩) ≠
      evaluateTerm singletonTable [] AssemblyFixtures.atomTerm := by
  constructor
  · exact RepresentationDerivable.substitution [.nullary ⟨2⟩]
      (RepresentationDerivable.generator (by rfl : erasingDeclaration.generators[0]? =
        some erasingGenerator))
  · decide

/-- The actual finite checker rejects that invalid substitution image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b08a4465e706e692df0cdc89450745055189a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
