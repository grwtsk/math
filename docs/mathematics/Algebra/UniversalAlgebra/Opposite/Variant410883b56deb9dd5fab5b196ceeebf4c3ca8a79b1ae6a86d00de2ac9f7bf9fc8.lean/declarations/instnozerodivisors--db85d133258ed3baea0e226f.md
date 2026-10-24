# instNoZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39e1e2a7cb8bd9464dae9ea1d2682ff83fdea7f0724264942179f33b34ee1ffa",
  "kind": "instance",
  "lexical_name": "instNoZeroDivisors",
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
  "slug": "instnozerodivisors--db85d133258ed3baea0e226f",
  "source": {
    "blob": "d2b260962086f7a4f934218f02f716c34ef9ec4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db85d133258ed3baea0e226f89582a86aaf93b453825d84606b716a0347f5d45",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39e1e2a7cb8bd9464dae9ea1d2682ff83fdea7f0724264942179f33b34ee1ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNoZeroDivisors [Zero α] [Mul α] [NoZeroDivisors α] : NoZeroDivisors αᵃᵒᵖ where
  eq_zero_or_eq_zero_of_mul_eq_zero (H : op (_ * _) = op (0 : α)) :=
    Or.imp (fun hx => unop_injective hx) (fun hy => unop_injective hy)
    (@eq_zero_or_eq_zero_of_mul_eq_zero α _ _ _ _ _ <| op_injective H)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b260962086f7a4f934218f02f716c34ef9ec4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
