# _root_.GRWTSK.Algebra.LinearAlgebra.ToSpanSingletonHomothety.Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.LinearEquiv.toSpanNonzeroSingleton_homothety

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bdfe946-d4c1-4d1a-4ad6-d07b56ac3245",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.ToSpanSingletonHomothety.Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.LinearEquiv.toSpanNonzeroSingleton_homothety",
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
  "slug": "root-grwtsk-algebra-linearalgebra-tospansingletonhomothety-variant546bd3--6ffcf8d999bd2947058ea9a1",
  "source": {
    "blob": "35c632a20cd662c46df8bc5e46e0ce7778ccfba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ffcf8d999bd2947058ea9a116f797e01d382fe07b5765df9364187bd78c80c9",
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

Occurrence: `result:1bdfe946-d4c1-4d1a-4ad6-d07b56ac3245`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.ToSpanSingletonHomothety.Variant546bd3abc8479dd84ea19a39b1e77baf14962188e53b6ed6b6d1bd6253311217.LinearEquiv.toSpanNonzeroSingleton_homothety (x : E) (h : x ≠ 0) (c : 𝕜) :
    ‖LinearEquiv.toSpanNonzeroSingleton 𝕜 E x h c‖ = ‖x‖ * ‖c‖ :=
  LinearMap.toSpanSingleton_homothety _ _ _

end Seminormed

section Normed
variable [NormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- Given a nonzero element `x` of a normed space `E₁` over a field `𝕜`, the natural
    continuous linear equivalence from `E₁` to the span of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c632a20cd662c46df8bc5e46e0ce7778ccfba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
