# subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80ad4594-60ca-6478-cfb9-8d3664d66a9b",
  "kind": "theorem",
  "lexical_name": "subsingleton",
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
  "slug": "subsingleton--e6cf4c1647c8630de25583f7",
  "source": {
    "blob": "402a28d81e26d0b2f627bfb14a151487ee0e7648",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6cf4c1647c8630de25583f785542ddb22db80957b829b9c8915c9881e673659",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ad4594-60ca-6478-cfb9-8d3664d66a9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem subsingleton (h : IsHausdorff (⊤ : Ideal R) M) : Subsingleton M :=
  ⟨fun x y => eq_of_sub_eq_zero <| h.haus (x - y) fun n => by
    rw [Ideal.top_pow, top_smul]
    exact SModEq.top⟩
#align is_Hausdorff.subsingleton IsHausdorff.subsingleton

variable (M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicCompletion/Variantbb38e4e7a1ecaf8ae8b7d6c73d32d82e1767a6e9d0a48a125e71cb35bb2b3a67.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402a28d81e26d0b2f627bfb14a151487ee0e7648` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
