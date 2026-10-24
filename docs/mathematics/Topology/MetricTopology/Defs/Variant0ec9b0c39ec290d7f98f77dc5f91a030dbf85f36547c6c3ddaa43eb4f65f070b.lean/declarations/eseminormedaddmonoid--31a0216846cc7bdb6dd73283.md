# ESeminormedAddMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f69e32efcc81a0d3e51c8e5c4e3743f447071e2c33f312ab2e86cdddffdb7d57",
  "kind": "class",
  "lexical_name": "ESeminormedAddMonoid",
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
  "slug": "eseminormedaddmonoid--31a0216846cc7bdb6dd73283",
  "source": {
    "blob": "968586593512aa16616ed5bf4d48d06f58281518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a0216846cc7bdb6dd7328372c8206b6b57fa6c11d51f4522a0cb99ec466f63",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f69e32efcc81a0d3e51c8e5c4e3743f447071e2c33f312ab2e86cdddffdb7d57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ESeminormedAddMonoid (E : Type*) [TopologicalSpace E]
    extends ContinuousENorm E, AddMonoid E where
  enorm_zero : ‖(0 : E)‖ₑ = 0
  protected enorm_add_le : ∀ x y : E, ‖x + y‖ₑ ≤ ‖x‖ₑ + ‖y‖ₑ

-- see Note [lower instance priority]
attribute [instance 10] ESeminormedAddMonoid.toAddMonoid

/-- An enormed monoid is an additive monoid endowed with a continuous enorm,
which is positive definite: in other words, this is an `ESeminormedAddMonoid` with a positive
definiteness condition added. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant0ec9b0c39ec290d7f98f77dc5f91a030dbf85f36547c6c3ddaa43eb4f65f070b.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `968586593512aa16616ed5bf4d48d06f58281518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
