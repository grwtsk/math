# iff_exact_iff_lTensor_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99448a4b-cc0c-e3dd-0b34-f0712963c519",
  "kind": "lemma",
  "lexical_name": "iff_exact_iff_lTensor_exact",
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
  "slug": "iff-exact-iff-ltensor-exact--97cd8430afab15603186c233",
  "source": {
    "blob": "1e211b79962cca71da71f2c2dc7d7588ca4f72a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 431,
    "path": "GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97cd8430afab15603186c2337772820a103d820067f39646bb866111997f99a1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99448a4b-cc0c-e3dd-0b34-f0712963c519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff_exact_iff_lTensor_exact :
    FaithfullyFlat R M ↔
    (∀ {N1 : Type max u v} [AddCommGroup N1] [Module R N1]
      {N2 : Type max u v} [AddCommGroup N2] [Module R N2]
      {N3 : Type max u v} [AddCommGroup N3] [Module R N3]
      (l12 : N1 →ₗ[R] N2) (l23 : N2 →ₗ[R] N3),
        Function.Exact l12 l23 ↔ Function.Exact (l12.lTensor M) (l23.lTensor M)) := by
  simp only [iff_exact_iff_rTensor_exact, LinearMap.rTensor_exact_iff_lTensor_exact]

end fixed_universe

end exact

section linearMap

/-!
### Faithfully flat modules and linear maps

In this section we prove that an `R`-module `M` is faithfully flat iff the following holds:

- `M` is flat
- for any `R`-linear map `f : N → N'`, `f` = 0 iff `f ⊗ 𝟙M = 0` iff `𝟙M ⊗ f = 0`

-/

section arbitrary_universe

/--
If `M` is a faithfully flat module, then for all linear maps `f`, the map `id ⊗ f = 0`, if and only
if `f = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e211b79962cca71da71f2c2dc7d7588ca4f72a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
