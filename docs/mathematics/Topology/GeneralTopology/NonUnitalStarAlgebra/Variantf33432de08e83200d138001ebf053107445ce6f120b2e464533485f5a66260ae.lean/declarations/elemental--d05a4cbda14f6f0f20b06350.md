# elemental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88a5e9a295d20a50d5347c8d67d588e6b50e839863f6e907b96c7099822a26fb",
  "kind": "def",
  "lexical_name": "elemental",
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
  "slug": "elemental--d05a4cbda14f6f0f20b06350",
  "source": {
    "blob": "0de17860f93568cf756e4b3efe1a5721b929e852",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 162,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d05a4cbda14f6f0f20b06350c9fb66d549ec22f27e62c901a6569136f0de8a1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88a5e9a295d20a50d5347c8d67d588e6b50e839863f6e907b96c7099822a26fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elemental (x : A) : NonUnitalStarSubalgebra R A :=
  adjoin R {x} |>.topologicalClosure

namespace elemental

@[simp, aesop safe (rule_sets := [SetLike])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Variantf33432de08e83200d138001ebf053107445ce6f120b2e464533485f5a66260ae.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de17860f93568cf756e4b3efe1a5721b929e852` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
