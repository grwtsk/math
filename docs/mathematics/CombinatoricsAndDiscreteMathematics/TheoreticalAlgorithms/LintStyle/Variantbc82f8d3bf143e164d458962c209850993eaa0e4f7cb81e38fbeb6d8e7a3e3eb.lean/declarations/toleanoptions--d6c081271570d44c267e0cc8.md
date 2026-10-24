# toLeanOptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:323d8a190e2a576d4c518b79d79f7ee643762d19a2c25c700037abf85510c7a3",
  "kind": "def",
  "lexical_name": "toLeanOptions",
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
  "slug": "toleanoptions--d6c081271570d44c267e0cc8",
  "source": {
    "blob": "b8b72dc34c03030903b1fd5e1bb8be321f18aa59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantbc82f8d3bf143e164d458962c209850993eaa0e4f7cb81e38fbeb6d8e7a3e3eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6c081271570d44c267e0cc877f7f767747ef4a7a11f04ab35a64dc2b5ed09fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantbc82f8d3bf143e164d458962c209850993eaa0e4f7cb81e38fbeb6d8e7a3e3eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:323d8a190e2a576d4c518b79d79f7ee643762d19a2c25c700037abf85510c7a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toLeanOptions (opts : Lean.LeanOptions) : Lean.Options := Id.run do
  let mut out := Lean.Options.empty
  for ⟨name, value⟩ in opts.values do
    -- Strip off the `weak.` prefix, like Lean does when parsing command line arguments.
    if name.getRoot == `weak
    then
      out := out.insert (name.replacePrefix `weak Lean.Name.anonymous) value.toDataValue
    else
      out := out.insert name value.toDataValue
  return out

/-- Determine the `Lean.Options` from the Lakefile of the current project.

We have to do this since style linters do not run in the `CoreM`/`CommandElabM` monads,
and so they do not get access to the options in scope.

Please do not confuse this with the Lean options at the moment that `lint-style` was compiled.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantbc82f8d3bf143e164d458962c209850993eaa0e4f7cb81e38fbeb6d8e7a3e3eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LintStyle/Variantbc82f8d3bf143e164d458962c209850993eaa0e4f7cb81e38fbeb6d8e7a3e3eb.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8b72dc34c03030903b1fd5e1bb8be321f18aa59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
