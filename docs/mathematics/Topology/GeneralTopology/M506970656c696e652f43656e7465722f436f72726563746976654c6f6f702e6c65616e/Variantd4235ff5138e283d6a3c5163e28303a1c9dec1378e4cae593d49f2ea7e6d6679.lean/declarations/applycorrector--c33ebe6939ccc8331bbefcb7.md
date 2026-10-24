# applyCorrector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cd1a06df4f508a2e657a638863565d1c77bf88cd92a4f6e784d98f10e570c0b",
  "kind": "def",
  "lexical_name": "applyCorrector",
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
  "slug": "applycorrector--c33ebe6939ccc8331bbefcb7",
  "source": {
    "blob": "5505d2d6d57d82cf092d7debbccff9d2db4bd3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c33ebe6939ccc8331bbefcb7f56431216be83b678f3afba59e5143fa9d1e4f63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cd1a06df4f508a2e657a638863565d1c77bf88cd92a4f6e784d98f10e570c0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyCorrector (s : BeamState) (c : BeamCorrector) : BeamState :=
  { x := s.x + c.dx
    px := s.px + c.dpx
    y := s.y + c.dy
    py := s.py + c.dpy
    delta := s.delta + c.ddelta
    ct := s.ct + c.dct }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5505d2d6d57d82cf092d7debbccff9d2db4bd3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
