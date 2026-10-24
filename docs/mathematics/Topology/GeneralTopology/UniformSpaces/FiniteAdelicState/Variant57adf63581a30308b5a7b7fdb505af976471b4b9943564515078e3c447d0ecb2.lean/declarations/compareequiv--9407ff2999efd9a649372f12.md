# compareEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90b5dcd8b9fda1ea654f051fafa97b11fef47e14ec6be638f729a0895f87da0a",
  "kind": "def",
  "lexical_name": "compareEquiv",
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
  "slug": "compareequiv--9407ff2999efd9a649372f12",
  "source": {
    "blob": "1cac0703d08d10fee7234f2d7c68643416bcf7ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9407ff2999efd9a649372f127632bde6faae8831eabce11d6f0df770ce84df78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90b5dcd8b9fda1ea654f051fafa97b11fef47e14ec6be638f729a0895f87da0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def compareEquiv
    (left : RestrictedAdelicCompletion.{u, v} finiteState)
    (right : RestrictedAdelicCompletion.{u, w} finiteState) :
    left.completion.space ≃ᵤ right.completion.space := by
  letI : UniformSpace left.completion.space :=
    left.completion.uniformStruct
  letI : CompleteSpace left.completion.space :=
    left.completion.complete
  letI : T0Space left.completion.space :=
    left.completion.separation
  letI : UniformSpace right.completion.space :=
    right.completion.uniformStruct
  letI : CompleteSpace right.completion.space :=
    right.completion.complete
  letI : T0Space right.completion.space :=
    right.completion.separation
  exact left.completion.compareEquiv right.completion

end RestrictedAdelicCompletion

end Mathematics.Prismatic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cac0703d08d10fee7234f2d7c68643416bcf7ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
