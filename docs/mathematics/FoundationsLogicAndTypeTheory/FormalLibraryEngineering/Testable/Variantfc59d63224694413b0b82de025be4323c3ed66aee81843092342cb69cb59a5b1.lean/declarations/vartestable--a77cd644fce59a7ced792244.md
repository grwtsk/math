# varTestable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1d3a4553c1fdfcee1b3e81a26149d3586b59b7864aae4757ea37e5c8abed69c",
  "kind": "instance",
  "lexical_name": "varTestable",
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
  "slug": "vartestable--a77cd644fce59a7ced792244",
  "source": {
    "blob": "2d1002d88aa1254808abe640d1bc68bfa0222afb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a77cd644fce59a7ced792244313bbd1f6fb6e6468976c05ad8b1a6cf36d770a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b1d3a4553c1fdfcee1b3e81a26149d3586b59b7864aae4757ea37e5c8abed69c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance varTestable [SampleableExt α] {β : α → Prop} [∀ x, Testable (β x)] :
    Testable (NamedBinder var <| ∀ x : α, β x) where
  run := fun cfg min => do
    let x ← Arbitrary.arbitrary
    if cfg.traceSuccesses || cfg.traceDiscarded then
      slimTrace s!"{var} := {repr x}"
    -- Use `runPropE` here to collect errors from the call to `Arbitrary.arbitrary`.
    let r ← Testable.runPropE (β <| SampleableExt.interp x) cfg false
    let ⟨finalX, finalR⟩ ←
      if isFailure r then
        if cfg.traceSuccesses then
          slimTrace s!"{var} := {repr x} is a failure"
        if min then
          minimize cfg var x r
        else
          pure ⟨x, r⟩
      else
        pure ⟨x, r⟩
    return addVarInfo var finalX (· <| SampleableExt.interp finalX) finalR

/-- Test a universal property about propositions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variantfc59d63224694413b0b82de025be4323c3ed66aee81843092342cb69cb59a5b1.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1002d88aa1254808abe640d1bc68bfa0222afb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
