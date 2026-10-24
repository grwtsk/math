# IsQuadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21e07424a68a4afd1455c371028187262cd15c450d56a88a6a0a5eeea426f9f1",
  "kind": "def",
  "lexical_name": "IsQuadratic",
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
  "slug": "isquadratic--3a852071afbf056b624f134f",
  "source": {
    "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 401,
    "path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a852071afbf056b624f134f4896a1988c750f99ca8bfcf18657efb7eee39cb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21e07424a68a4afd1455c371028187262cd15c450d56a88a6a0a5eeea426f9f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsQuadratic (χ : MulChar R R') : Prop :=
  ∀ a, χ a = 0 ∨ χ a = 1 ∨ χ a = -1

/-- If two values of quadratic characters with target `ℤ` agree after coercion into a ring
of characteristic not `2`, then they agree in `ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
