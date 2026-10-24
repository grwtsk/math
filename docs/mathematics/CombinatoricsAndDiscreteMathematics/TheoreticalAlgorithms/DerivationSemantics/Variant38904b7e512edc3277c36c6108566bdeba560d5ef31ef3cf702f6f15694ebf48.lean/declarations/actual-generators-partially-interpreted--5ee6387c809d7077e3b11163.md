# actual_generators_partially_interpreted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2030838-778c-54c7-12f9-dca9d5bffe85",
  "kind": "theorem",
  "lexical_name": "actual_generators_partially_interpreted",
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
  "slug": "actual-generators-partially-interpreted--5ee6387c809d7077e3b11163",
  "source": {
    "blob": "6b08a4465e706e692df0cdc89450745055189a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 210,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee6387c809d7077e3b11163499c8a485ab57c772c8a6a1f371f0865cabee0d7",
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

Occurrence: `result:b2030838-778c-54c7-12f9-dca9d5bffe85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_generators_partially_interpreted :
    GeneratorsPartiallyInterpreted declaration interpreterTable := by
  intro generator member assignment bounded
  have generatorExact : generator = AssemblyFixtures.generator := by
    simpa [declaration, AssemblyFixtures.generator] using member
  subst generator
  cases value : assignment 0 with
  | none => simp [AssemblyFixtures.generator, evaluatePartial, value]
  | some n =>
    have hn : n < 2 := bounded 0 n value
    have alternatives : n = 0 ∨ n = 1 := by omega
    rcases alternatives with rfl | rfl <;>
      simp [AssemblyFixtures.generator, evaluatePartial, value, tableOutput, interpreterTable,
        tableRowKey]

/-- Apply the induction theorem to the real licensed rule after the actual substitution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DerivationSemantics/Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b08a4465e706e692df0cdc89450745055189a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
