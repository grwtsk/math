# product_field_idempotents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61120c3c-b603-1e6d-1e6d-e14d560bc381",
  "kind": "theorem",
  "lexical_name": "product_field_idempotents",
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
  "slug": "product-field-idempotents--47f3f024d80d205a75b4d008",
  "source": {
    "blob": "7f60516b0af0bc7a591c4a16776668c6bfab638d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundIdempotents/Variant6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47f3f024d80d205a75b4d008958df3845e71d2b2fe5c40d7612a2d215edd0834",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundIdempotents/Variant6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61120c3c-b603-1e6d-1e6d-e14d560bc381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_field_idempotents {F : Type*} [Field F] (e : ℚ × F)
    (he : e * e = e) :
    e = 0 ∨ e = 1 ∨ e = (1, 0) ∨ e = (0, 1) := by
  have hfirst : e.1 * e.1 = e.1 := congrArg Prod.fst he
  have hsecond : e.2 * e.2 = e.2 := congrArg Prod.snd he
  rcases field_idempotent_is_zero_or_one e.1 hfirst with h0 | h1 <;>
    rcases field_idempotent_is_zero_or_one e.2 hsecond with k0 | k1
  · exact Or.inl (Prod.ext h0 k0)
  · exact Or.inr (Or.inr (Or.inr (Prod.ext h0 k1)))
  · exact Or.inr (Or.inr (Or.inl (Prod.ext h1 k0)))
  · exact Or.inr (Or.inl (Prod.ext h1 k1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundIdempotents/Variant6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundIdempotents/Variant6f04c4ff84f8a47f6b9b2f2697a701bd058a6d567dac701ec866ef85105501f4.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f60516b0af0bc7a591c4a16776668c6bfab638d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
