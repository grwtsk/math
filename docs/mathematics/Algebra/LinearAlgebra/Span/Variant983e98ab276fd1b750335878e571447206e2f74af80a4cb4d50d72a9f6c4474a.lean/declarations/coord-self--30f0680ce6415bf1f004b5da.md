# coord_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b10d8cbf-2a97-1e57-2943-8f8bf28e4b99",
  "kind": "theorem",
  "lexical_name": "coord_self",
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
  "slug": "coord-self--30f0680ce6415bf1f004b5da",
  "source": {
    "blob": "35c632a20cd662c46df8bc5e46e0ce7778ccfba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30f0680ce6415bf1f004b5daaac56371ce38a7fb094472def75a4561b911d830",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10d8cbf-2a97-1e57-2943-8f8bf28e4b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coord_self (x : E) (h : x ≠ 0) :
    (coord 𝕜 x h) (⟨x, Submodule.mem_span_singleton_self x⟩ : 𝕜 ∙ x) = 1 :=
  LinearEquiv.coord_self 𝕜 E x h

end Normed

end ContinuousLinearEquiv

namespace LinearIsometryEquiv

variable [NormedDivisionRing 𝕜] [SeminormedAddCommGroup E] [Module 𝕜 E] [NormSMulClass 𝕜 E]

/-- Given a unit element `x` of a normed space `E` over a field `𝕜`, the natural
    linear isometry equivalence from `E` to the span of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c632a20cd662c46df8bc5e46e0ce7778ccfba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
