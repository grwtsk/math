# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:423d2b3c978f36e34d7f2b74fe46de81ca60f9db33ed0991051eae7abaaff07d",
  "kind": "example",
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
  "slug": "example--1b51bb6183b55bba2e1f7e60",
  "source": {
    "blob": "2c149838e3b14ebc4d39426e8091b745f9194d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 385,
    "path": "GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b51bb6183b55bba2e1f7e602d02acc5634884ed3e3816ff1611a2624ddec40e",
  "verification": {
    "reference": "docs/verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:423d2b3c978f36e34d7f2b74fe46de81ca60f9db33ed0991051eae7abaaff07d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [Nonempty ι] : hB.topology = (hB.toSubmodulesBasis hsmul).topology :=
  rfl

end

/-- Given a ring filter basis on a commutative ring `R`, define a compatibility condition
on a family of submodules of an `R`-module `M`. This compatibility condition allows to get
a topological module structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Bases/Variant318dc13ee3d75ccfc2a995cd423715984976650f788c270c7e6c413e2f2dc21f.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c149838e3b14ebc4d39426e8091b745f9194d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
