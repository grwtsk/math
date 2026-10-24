# _root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf48182-4dad-dcf0-92ba-bc9856111322",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_union",
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
  "slug": "root-grwtsk-algebra-setsemiring-variant8f1647897dd383cd6ea75056d3c19292f--fa83611c4e3d73c84d8fd192",
  "source": {
    "blob": "4efea1b063a9902ec0e3e6f2c541618886d89042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 134,
    "path": "GRWTSK/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa83611c4e3d73c84d8fd1929bc7b2cc87ec0d7d016fb9178f2823c66105cda6",
  "verification": {
    "reference": "docs/verification/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf48182-4dad-dcf0-92ba-bc9856111322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.SetSemiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.Set.up_union (s t : Set α) : up (s ∪ t) = up s + up t :=
  rfl
#align set.up_union Set.up_union

/- Since addition on `SetSemiring` is commutative (it is set union), there is no need
to also have the instance `CovariantClass (SetSemiring α) (SetSemiring α) (swap (+)) (≤)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Semiring/Variant3a1c5b733bf67bd80c37192d2979c9eb437758a79a5eade5ceec3980fafe9dde.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4efea1b063a9902ec0e3e6f2c541618886d89042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
