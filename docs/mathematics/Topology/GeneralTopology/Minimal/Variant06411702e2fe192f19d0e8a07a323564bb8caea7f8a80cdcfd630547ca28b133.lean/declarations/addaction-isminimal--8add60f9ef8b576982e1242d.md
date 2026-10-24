# AddAction.IsMinimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6293d2b7fb8a7c316f32884166e38247a6fc014eccb4460cbfae3cdd4d812857",
  "kind": "class",
  "lexical_name": "AddAction.IsMinimal",
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
  "slug": "addaction-isminimal--8add60f9ef8b576982e1242d",
  "source": {
    "blob": "c29a7f2fce92e00a0c7eee3390403090cfa1813b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8add60f9ef8b576982e1242dad1052b9d8a080671e7e6769110214877793f988",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6293d2b7fb8a7c316f32884166e38247a6fc014eccb4460cbfae3cdd4d812857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class AddAction.IsMinimal (M α : Type*) [AddMonoid M] [TopologicalSpace α] [AddAction M α] :
    Prop where
  dense_orbit : ∀ x : α, Dense (AddAction.orbit M x)

/-- An action of a monoid `M` on a topological space is called *minimal* if the `M`-orbit of every
point `x : α` is dense. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Minimal/Variant06411702e2fe192f19d0e8a07a323564bb8caea7f8a80cdcfd630547ca28b133.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c29a7f2fce92e00a0c7eee3390403090cfa1813b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
