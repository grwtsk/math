# IsTorsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd0f2afe1edb2b151333d80c68c1f943d60bbbeb9da7cba7518adc2b878dae8b",
  "kind": "def",
  "lexical_name": "IsTorsion",
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
  "slug": "istorsion--edd5aab53094e0b65f3cf1ef",
  "source": {
    "blob": "6b00ade7827985a30f9483f185a56eb58681465a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edd5aab53094e0b65f3cf1efdfe17c316b8676b207a9aab629b31e598e6d2455",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd0f2afe1edb2b151333d80c68c1f943d60bbbeb9da7cba7518adc2b878dae8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsTorsion :=
  ∀ g : G, IsOfFinOrder g
#align monoid.is_torsion Monoid.IsTorsion
#align add_monoid.is_torsion AddMonoid.IsTorsion

/-- A monoid is not a torsion monoid if it has an element of infinite order. -/
@[to_additive (attr := simp) "An additive monoid is not a torsion monoid if it
  has an element of infinite order."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b00ade7827985a30f9483f185a56eb58681465a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
