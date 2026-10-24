# Contravariant.toLeftCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cd149b212b2d239fabd9020f284f43b1d17a2fd7c091dd6664f390557049c3e",
  "kind": "def",
  "lexical_name": "Contravariant.toLeftCancelSemigroup",
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
  "slug": "contravariant-toleftcancelsemigroup--549761eb7087f483ff83f0ed",
  "source": {
    "blob": "e722d92759efb3e913231e31de2d2e8d8e3cd5b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1113,
    "line": 1103,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:549761eb7087f483ff83f0ed9e1af285f43803baa2116f16b9e7dcdd08c4cd4b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cd149b212b2d239fabd9020f284f43b1d17a2fd7c091dd6664f390557049c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1103–1113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Contravariant.toLeftCancelSemigroup [MulLeftReflectLE α] :
    LeftCancelSemigroup α :=
  { ‹Semigroup α› with mul_left_cancel := fun _ _ _ => mul_left_cancel'' }

/- This is not instance, since we want to have an instance from `RightCancelSemigroup`s
to the appropriate covariant class. -/
/-- A semigroup with a partial order and satisfying `RightCancelSemigroup`
(i.e. `a * c < b * c → a < b`) is a `RightCancelSemigroup`. -/
@[to_additive
"An additive semigroup with a partial order and satisfying `AddRightCancelSemigroup`
(`a + c < b + c → a < b`) is a `AddRightCancelSemigroup`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant3c9eec32897853178e038b0180842511e6712407b8a7ba2ce6ff927ab5eccebe.lean#L1103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e722d92759efb3e913231e31de2d2e8d8e3cd5b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
