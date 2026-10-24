# instNoZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f18fcca07e7bedf5326430c99924be5fe7bb54c63b6bc638058eb5104624542c",
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
  "slug": "instnozerodivisors--bf73ddf8a872240ccabd9476",
  "source": {
    "blob": "d2b260962086f7a4f934218f02f716c34ef9ec4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf73ddf8a872240ccabd947663051ca8f597c99bf5580e29c71668dd8eeebe64",
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

Occurrence: `declaration:f18fcca07e7bedf5326430c99924be5fe7bb54c63b6bc638058eb5104624542c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNoZeroDivisors [Zero α] [Mul α] [NoZeroDivisors α] : NoZeroDivisors αᵐᵒᵖ where
  eq_zero_or_eq_zero_of_mul_eq_zero (H : op (_ * _) = op (0 : α)) :=
      Or.casesOn (eq_zero_or_eq_zero_of_mul_eq_zero <| op_injective H)
        (fun hy => Or.inr <| unop_injective <| hy) fun hx => Or.inl <| unop_injective <| hx

end MulOpposite

namespace AddOpposite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant410883b56deb9dd5fab5b196ceeebf4c3ca8a79b1ae6a86d00de2ac9f7bf9fc8.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b260962086f7a4f934218f02f716c34ef9ec4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
