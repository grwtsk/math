# LFunction_eq_completed_div_gammaFactor_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5be1ffaf-08f2-fe6f-c254-1b884f9d94b9",
  "kind": "lemma",
  "lexical_name": "LFunction_eq_completed_div_gammaFactor_odd",
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
  "slug": "lfunction-eq-completed-div-gammafactor-odd--01df5685d1f9932e7427a2ce",
  "source": {
    "blob": "7ee2312e9873e481f5b28614ce42e81f8e7c55be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 403,
    "path": "GRWTSK/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01df5685d1f9932e7427a2cefdf09d4e128a9f7d2854a1321bb0481ebf0b2489",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5be1ffaf-08f2-fe6f-c254-1b884f9d94b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LFunction_eq_completed_div_gammaFactor_odd (hΦ : Φ.Odd) (s : ℂ) :
    LFunction Φ s = completedLFunction Φ s / Gammaℝ (s + 1) := by
  simp only [LFunction_def_odd hΦ, completedLFunction_def_odd hΦ, hurwitzZetaOdd, mul_div_assoc,
    sum_div]

/--
First form of functional equation for completed L-functions (even case).

Private because it is superseded by `completedLFunction_one_sub_even` below, which is valid for a
much wider range of `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variantbb9aa32601d9db6b0719b400c0534ee75df3b94a3a02a96bfb473edd20d69061.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee2312e9873e481f5b28614ce42e81f8e7c55be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
