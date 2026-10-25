# minimizeAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:04c01b68bdef17bbc69d8579c617589ea24c404f6519ce2a4c67303e24d3c831",
  "kind": "def",
  "lexical_name": "minimizeAux",
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
  "slug": "minimizeaux--b467c0ac485581c20b9164b1",
  "source": {
    "blob": "89df7d17deb2a2cd6f6d9deaf4342e5774a50324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b467c0ac485581c20b9164b164d438c6cfa07e69d6c31f8c7aee490d62a5251c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:04c01b68bdef17bbc69d8579c617589ea24c404f6519ce2a4c67303e24d3c831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def minimizeAux [SampleableExt α] {β : α → Prop} [∀ x, Testable (β x)] (cfg : Configuration)
    (var : String) (x : SampleableExt.proxy α) (n : Nat) :
    OptionT Gen (Σ x, TestResult (β (SampleableExt.interp x))) := do
  let candidates := SampleableExt.shrink.shrink x
  if cfg.traceShrinkCandidates then
    slimTrace s!"Candidates for {var} := {repr x}:\n  {repr candidates}"
  for candidate in candidates do
    if cfg.traceShrinkCandidates then
      slimTrace s!"Trying {var} := {repr candidate}"
    let res ← OptionT.lift $ Testable.runProp (β (SampleableExt.interp candidate)) cfg true
    if res.isFailure then
      if cfg.traceShrink then
        slimTrace s!"{var} shrunk to {repr candidate} from {repr x}"
      let currentStep := OptionT.lift $ pure $ Sigma.mk candidate (addShrinks (n + 1) res)
      let nextStep := minimizeAux cfg var candidate (n + 1)
      return ←(nextStep <|> currentStep)
  if cfg.traceShrink then
    slimTrace s!"No shrinking possible for {var} := {repr x}"
  failure

/-- Once a property fails to hold on an example, look for smaller counter-examples
to show the user. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant4d21c6169a136eb8236054c917f428d98af84c5a0f56004cabc68904cab619f7.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89df7d17deb2a2cd6f6d9deaf4342e5774a50324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
