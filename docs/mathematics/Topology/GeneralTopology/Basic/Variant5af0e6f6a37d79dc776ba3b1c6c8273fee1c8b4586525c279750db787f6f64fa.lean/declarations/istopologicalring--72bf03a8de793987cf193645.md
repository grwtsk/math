# IsTopologicalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:226eb5d3148abce010d6b120670f4f55c27b96f29b96254a0e111b70a88eaa3c",
  "kind": "class",
  "lexical_name": "IsTopologicalRing",
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
  "slug": "istopologicalring--72bf03a8de793987cf193645",
  "source": {
    "blob": "7420e9e86fedd96ccc3fd0fccd6c8f87d10c2055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72bf03a8de793987cf1936455a7e19400c4e64f8b9f635771beae2ebefe29278",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:226eb5d3148abce010d6b120670f4f55c27b96f29b96254a0e111b70a88eaa3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsTopologicalRing [TopologicalSpace R] [NonUnitalNonAssocRing R] : Prop
    extends IsTopologicalSemiring R, ContinuousNeg R

@[deprecated (since := "2025-02-14")] alias TopologicalRing :=
  IsTopologicalRing

variable {R}

/-- If `R` is a ring with a continuous multiplication, then negation is continuous as well since it
is just multiplication with `-1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5af0e6f6a37d79dc776ba3b1c6c8273fee1c8b4586525c279750db787f6f64fa.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7420e9e86fedd96ccc3fd0fccd6c8f87d10c2055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
