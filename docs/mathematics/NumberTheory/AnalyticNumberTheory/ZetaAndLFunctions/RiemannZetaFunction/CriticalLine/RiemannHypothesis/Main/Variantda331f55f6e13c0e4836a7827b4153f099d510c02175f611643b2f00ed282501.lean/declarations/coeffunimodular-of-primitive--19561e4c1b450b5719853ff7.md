# coeffUnimodular_of_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ede8893b-d96a-1e9c-0f8d-003443dd2fd3",
  "kind": "lemma",
  "lexical_name": "coeffUnimodular_of_primitive",
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
  "slug": "coeffunimodular-of-primitive--19561e4c1b450b5719853ff7",
  "source": {
    "blob": "e2631aba0800c98ee4759ddf28c93e7630119e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 291,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19561e4c1b450b5719853ff7d440d670ea68b92021f9fcac530b0b87269e0a9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ede8893b-d96a-1e9c-0f8d-003443dd2fd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeffUnimodular_of_primitive (_hq : 1 < q) (_hprim : χ.IsPrimitive) :
    CoeffUnimodular q (coeff χ) where
  norm_le := fun n => χ.norm_le_one _
  vanish := fun n hn => by
    have : ¬ IsUnit ((n : ZMod q)) := by
      rwa [ZMod.isUnit_iff_coprime]
    exact χ.map_nonunit this
  norm_eq := fun n _ hn => by
    have hu : IsUnit ((n : ZMod q)) := by
      rwa [ZMod.isUnit_iff_coprime]
    simpa [coeff] using χ.unit_norm_eq_one hu.unit

omit [NeZero q] in
/-- parity is ≤ 1 by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantda331f55f6e13c0e4836a7827b4153f099d510c02175f611643b2f00ed282501.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2631aba0800c98ee4759ddf28c93e7630119e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
