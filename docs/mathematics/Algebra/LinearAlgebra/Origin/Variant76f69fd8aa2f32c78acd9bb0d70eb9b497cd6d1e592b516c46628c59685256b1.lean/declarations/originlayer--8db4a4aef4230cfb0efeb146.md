# originLayer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d69ab56451040df1c86545ec012c2eeb20b479481f9a9aef7319957656df13e",
  "kind": "def",
  "lexical_name": "originLayer",
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
  "slug": "originlayer--8db4a4aef4230cfb0efeb146",
  "source": {
    "blob": "e143274c8f79a36b79c9490d12717ea9458db8b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/Origin/Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8db4a4aef4230cfb0efeb146dce9c180359cd1eb131541c97382c8b44fce3e7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Origin/Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d69ab56451040df1c86545ec012c2eeb20b479481f9a9aef7319957656df13e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def originLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (frequency : Nat)
    (origin : V) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency ∧
    system.origin obligation = origin

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Origin/Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Origin/Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e143274c8f79a36b79c9490d12717ea9458db8b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
