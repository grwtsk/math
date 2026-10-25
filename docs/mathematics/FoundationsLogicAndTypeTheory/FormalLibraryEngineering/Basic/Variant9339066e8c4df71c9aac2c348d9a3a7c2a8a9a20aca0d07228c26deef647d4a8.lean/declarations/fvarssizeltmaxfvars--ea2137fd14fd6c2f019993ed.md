# fvarsSizeLtMaxFVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:340b8f98f0547b44a28a1513506c6db7f5becdd8189b80161b2847a31676d522",
  "kind": "def",
  "lexical_name": "fvarsSizeLtMaxFVars",
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
  "slug": "fvarssizeltmaxfvars--ea2137fd14fd6c2f019993ed",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1406,
    "line": 1395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea2137fd14fd6c2f019993ed444420569dcc4f70d7f6d092a1ba6d0382c3f97e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:340b8f98f0547b44a28a1513506c6db7f5becdd8189b80161b2847a31676d522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1395–1406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def fvarsSizeLtMaxFVars (fvars : Array Expr) (maxFVars? : Option Nat) : Bool :=
  match maxFVars? with
  | some maxFVars => fvars.size < maxFVars
  | none          => true

mutual
  /--
    `withNewLocalInstances isClassExpensive fvars j k` updates the vector or local instances
    using free variables `fvars[j] ... fvars.back`, and execute `k`.

    - `isClassExpensive` is defined later.
    - `isClassExpensive` uses `whnf` which depends (indirectly) on the set of local instances. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L1395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
