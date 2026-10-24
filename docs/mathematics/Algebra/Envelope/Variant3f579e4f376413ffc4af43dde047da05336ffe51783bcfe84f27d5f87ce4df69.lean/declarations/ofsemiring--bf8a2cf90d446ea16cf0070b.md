# ofSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40078fc104ef7752a2eb606284d2901d38f20f49a67069734701b19cfedcd747",
  "kind": "def",
  "lexical_name": "ofSemiring",
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
  "slug": "ofsemiring--bf8a2cf90d446ea16cf0070b",
  "source": {
    "blob": "a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 250,
    "path": "GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf8a2cf90d446ea16cf0070b9b18442c66c756dae7be3f20794dbe952952fd51",
  "verification": {
    "reference": "docs/verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40078fc104ef7752a2eb606284d2901d38f20f49a67069734701b19cfedcd747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSemiring : Ring (Q α) := {
  nsmul := ⟨nsmul⟩
  zsmul := ⟨zsmul⟩
  ofNat   := fun n => ⟨natCast n⟩
  natCast := ⟨natCast⟩
  intCast := ⟨intCast⟩
  npow := ⟨npow⟩
  add, sub, mul, neg,
  add_comm, add_assoc, add_zero
  neg_add_cancel, sub_eq_add_neg
  mul_one, one_mul, zero_mul, mul_zero, mul_assoc,
  left_distrib, right_distrib, pow_zero, pow_succ,
  intCast_neg, ofNat_succ, neg_zsmul
}

attribute [instance] ofSemiring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Envelope/Variant3f579e4f376413ffc4af43dde047da05336ffe51783bcfe84f27d5f87ce4df69.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d4fd93c00f92010b2fc5a67b97abcba4db9cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
