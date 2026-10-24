# _root_.GRWTSK.Algebra.GroupTheory.ZeroHom.Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.injective_iff_map_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3443c1a-5554-d7a4-0ddb-143db2e9c134",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ZeroHom.Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.injective_iff_map_eq_one",
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
  "slug": "root-grwtsk-algebra-grouptheory-zerohom-variant5a85b2094481de456648f178a--fec25ddefe2a6391fc4b11e0",
  "source": {
    "blob": "52c49b8b81a338bc3faa867a4119e74986f0f8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1567,
    "line": 1554,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fec25ddefe2a6391fc4b11e03a76e6b597190e5f86ed83aef11b1a73a9ab6929",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3443c1a-5554-d7a4-0ddb-143db2e9c134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1554–1567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ZeroHom.Variant5a85b2094481de456648f178ad40d276a620317fd9236cb1189f345e07a06cc5.injective_iff_map_eq_one {G H} [Group G] [MulOneClass H] [MonoidHomClass F G H]
  (f : F) : Function.Injective f ↔ ∀ a, f a = 1 → a = 1 :=
  ⟨fun h x => (map_eq_one_iff f h).mp, fun h x y hxy =>
    mul_inv_eq_one.1 <| h _ <| by rw [map_mul, hxy, ← map_mul, mul_inv_self, map_one]⟩
#align injective_iff_map_eq_one injective_iff_map_eq_one
#align injective_iff_map_eq_zero injective_iff_map_eq_zero

/-- A homomorphism from a group to a monoid is injective iff its kernel is trivial,
stated as an iff on the triviality of the kernel.
For the implication, see `injective_iff_map_eq_one`. -/
@[to_additive
  "A homomorphism from an additive group to an additive monoid is injective iff its
  kernel is trivial, stated as an iff on the triviality of the kernel. For the implication, see
  `injective_iff_map_eq_zero`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean#L1554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c49b8b81a338bc3faa867a4119e74986f0f8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
