# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:256a665b13a80448e77e9790535815eca2b0cee5f210d2fa7e092acaa0ad2790",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--8a8e491ef3b72801f701d74f",
  "source": {
    "blob": "b4b9f4cab66495a3472a4d0413c2e0956043d91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a8e491ef3b72801f701d74f242d3c04c58fcf34e186c149f29b8e8d0e590904",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:256a665b13a80448e77e9790535815eca2b0cee5f210d2fa7e092acaa0ad2790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize gcongrExt : SimpleScopedEnvExtension ((Name × Name × Array Bool) × GCongrLemma)
    (HashMap (Name × Name × Array Bool) (Array GCongrLemma)) ←
  registerSimpleScopedEnvExtension {
    addEntry := fun m (n, lem) => m.insert n ((m.findD n #[]).push lem)
    initial := {}
  }

/-- Attribute marking "generalized congruence" (`gcongr`) lemmas.  Such lemmas must have a
conclusion of a form such as `f x₁ y z₁ ∼ f x₂ y z₂`; that is, a relation between the application of
a function to two argument lists, in which the "varying argument" pairs (here `x₁`/`x₂` and
`z₁`/`z₂`) are all free variables.

The antecedents of such a lemma are classified as generating "main goals" if they are of the form
`x₁ ≈ x₂` for some "varying argument" pair `x₁`/`x₂` (and a possibly different relation `≈` to `∼`),
or more generally of the form `∀ i h h' j h'', f₁ i j ≈ f₂ i j` (say) for some "varying argument"
pair `f₁`/`f₂`. (Other antecedents are considered to generate "side goals".) The index of the
"varying argument" pair corresponding to each "main" antecedent is recorded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b9f4cab66495a3472a4d0413c2e0956043d91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
