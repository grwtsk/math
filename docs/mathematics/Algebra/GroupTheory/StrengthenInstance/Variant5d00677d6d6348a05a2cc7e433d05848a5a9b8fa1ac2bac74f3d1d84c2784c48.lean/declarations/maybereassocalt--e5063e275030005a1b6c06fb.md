# maybeReassocAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c4d558f229332560093aa2c564175be67f4f296ada4ea36ed66e41a7a1416d0",
  "kind": "def",
  "lexical_name": "maybeReassocAlt",
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
  "slug": "maybereassocalt--e5063e275030005a1b6c06fb",
  "source": {
    "blob": "247afe24c58c8f41931d12c972fe5b35132a5b4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 14,
    "path": "GRWTSK/Algebra/GroupTheory/StrengthenInstance/Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5063e275030005a1b6c06fb7cc4195881b858146b48279b455e50a566b05d3a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/StrengthenInstance/Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c4d558f229332560093aa2c564175be67f4f296ada4ea36ed66e41a7a1416d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def maybeReassocAlt {M : Q(Type $u)} (mul : Q(Mul $M)) (a b : Q($M)) :
    MetaM (Option Q($a*($b*$b) = ($a*$b)*$b)) := do
  let .some inst ← trySynthInstanceQ q(Semigroup $M) | return none
  assumeInstancesCommute
  return some q(by rw [mul_assoc])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/StrengthenInstance/Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/StrengthenInstance/Variant5d00677d6d6348a05a2cc7e433d05848a5a9b8fa1ac2bac74f3d1d84c2784c48.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `247afe24c58c8f41931d12c972fe5b35132a5b4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
