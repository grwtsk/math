# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fa9f582ee620c3d45d5156995dc29dbc5fa494fb3f15ab09b2d3e825bc76001",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--eec18d3e820e8cd5f584e27c",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eec18d3e820e8cd5f584e27c6e1d9c712c989ad84d5af36a27d43167a6a1d5d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fa9f582ee620c3d45d5156995dc29dbc5fa494fb3f15ab09b2d3e825bc76001`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure Config extends Rewrite.Config where
  /-- When `useRewrite = true`, switch to using the default `rewrite` tactic when the goal is
  and equality or iff. -/
  useRewrite : Bool := true
  /-- When `implicationHyp = true`, interpret the rewrite rule as an implication. -/
  implicationHyp : Bool := false
  /-- Whether to use `kabstract` to find the rewrites locations. -/
  useKAbstract := false

section kabstract

/-- Given a proof of `a ~ b`, close a goal of the form `a ~' b` or `b ~' a`
for some possibly different relation `~'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
