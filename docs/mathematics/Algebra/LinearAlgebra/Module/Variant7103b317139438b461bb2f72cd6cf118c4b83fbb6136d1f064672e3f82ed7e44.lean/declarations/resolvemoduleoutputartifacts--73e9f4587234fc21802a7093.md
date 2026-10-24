# resolveModuleOutputArtifacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d3af0d35d7aebc444e48cc7d3798537eac805957834d59b91b004648f33f781",
  "kind": "def",
  "lexical_name": "resolveModuleOutputArtifacts",
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
  "slug": "resolvemoduleoutputartifacts--73e9f4587234fc21802a7093",
  "source": {
    "blob": "3e86af6463090dc2137ba05b5b4fed84e5d42a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 741,
    "line": 737,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73e9f4587234fc21802a7093f511f5c567343d24d8d1d32d85eae1b15496a6bf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d3af0d35d7aebc444e48cc7d3798537eac805957834d59b91b004648f33f781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–741.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveModuleOutputArtifacts (out : CacheOutput) : JobM ModuleOutputArtifacts := do
  match fromJson? out.data with
  | .ok (descrs : ModuleOutputDescrs) => descrs.resolve out.service? out.scope?
  | .error e => error s!"ill-formed module outputs:\n{out.data.render.pretty 80 2}\n{e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7103b317139438b461bb2f72cd6cf118c4b83fbb6136d1f064672e3f82ed7e44.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e86af6463090dc2137ba05b5b4fed84e5d42a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
