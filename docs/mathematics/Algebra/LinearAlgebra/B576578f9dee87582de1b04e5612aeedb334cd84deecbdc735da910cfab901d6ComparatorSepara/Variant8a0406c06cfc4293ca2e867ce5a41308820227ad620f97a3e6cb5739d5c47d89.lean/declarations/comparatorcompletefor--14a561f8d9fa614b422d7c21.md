# ComparatorCompleteFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b56577c3937cb7e3a19699014ef576bc6d82be8901146089a3e3a9ddd40ab27",
  "kind": "def",
  "lexical_name": "ComparatorCompleteFor",
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
  "slug": "comparatorcompletefor--14a561f8d9fa614b422d7c21",
  "source": {
    "blob": "10732377c769540b7f3f7743ae53073d47f8c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14a561f8d9fa614b422d7c2183096ca03bdb19ab9311f6658a348067ea6f290e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b56577c3937cb7e3a19699014ef576bc6d82be8901146089a3e3a9ddd40ab27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ComparatorCompleteFor
    (Q : LinearComparator V) (I : LinearIntervention X V) : Prop :=
  C.ComparatorSectorComplete Q ∧
    ∀ x : X, G.Visible (C.projectedDifferential I x) →
      C.ComparatorDetectsAt Q I x

/-- In a complete comparator regime, positive Phase-III sensitivity forces
strict Phase-IV comparator separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variant8a0406c06cfc4293ca2e867ce5a41308820227ad620f97a3e6cb5739d5c47d89.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10732377c769540b7f3f7743ae53073d47f8c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
