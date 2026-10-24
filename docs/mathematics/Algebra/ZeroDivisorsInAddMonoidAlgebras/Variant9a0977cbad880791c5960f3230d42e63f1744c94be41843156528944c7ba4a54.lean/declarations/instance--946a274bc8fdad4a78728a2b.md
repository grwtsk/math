# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57635a193029e9bac78955d749fb4da34be0ef4738c27d81915807bdc593a446",
  "kind": "instance",
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
  "slug": "instance--946a274bc8fdad4a78728a2b",
  "source": {
    "blob": "49cef68046e69d3c93426d768a484b53a909f71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:946a274bc8fdad4a78728a2b3ea6f8b35b1fbc0d1d035957d2509152b5d5c283",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57635a193029e9bac78955d749fb4da34be0ef4738c27d81915807bdc593a446`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AddCommMonoid F where
  add := max
  add_assoc := by boom
  zero := 0
  zero_add := by boom
  add_zero := by boom
  add_comm := by boom

/-- The `CovariantClass`es asserting monotonicity of addition hold for `F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant9a0977cbad880791c5960f3230d42e63f1744c94be41843156528944c7ba4a54.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49cef68046e69d3c93426d768a484b53a909f71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
