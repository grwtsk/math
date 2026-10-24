# invertibleInvOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91837b370f942555e4cfb90b43b5b1fce444d8d1cf808a5e734fb2fe7a2ad2b2",
  "kind": "instance",
  "lexical_name": "invertibleInvOf",
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
  "slug": "invertibleinvof--e27fee3e81abc0ab51a4e240",
  "source": {
    "blob": "ed25872c35c34ee2ed71a5fb8ba8212677f21f08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 288,
    "path": "GRWTSK/Algebra/Invertible/Variant4c41b79b756a408ed83f653c3e462ffcb602fc73b3bd4bd05f3544ec58d31629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e27fee3e81abc0ab51a4e2402408c6b9903e4549fc85a38a5189833880899a5b",
  "verification": {
    "reference": "docs/verification/Algebra/Invertible/Variant4c41b79b756a408ed83f653c3e462ffcb602fc73b3bd4bd05f3544ec58d31629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91837b370f942555e4cfb90b43b5b1fce444d8d1cf808a5e734fb2fe7a2ad2b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance invertibleInvOf [One α] [Mul α] {a : α} [Invertible a] : Invertible (⅟ a) :=
  ⟨a, mul_invOf_self a, invOf_mul_self a⟩
#align invertible_inv_of invertibleInvOf

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Invertible/Variant4c41b79b756a408ed83f653c3e462ffcb602fc73b3bd4bd05f3544ec58d31629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Invertible/Variant4c41b79b756a408ed83f653c3e462ffcb602fc73b3bd4bd05f3544ec58d31629.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed25872c35c34ee2ed71a5fb8ba8212677f21f08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
