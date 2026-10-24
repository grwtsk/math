# integrableOn_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ecc412e-404e-5dcb-39c9-2faa8e8aeb92",
  "kind": "theorem",
  "lexical_name": "integrableOn_iff",
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
  "slug": "integrableon-iff--f4b20328fc196b80d4ee3e03",
  "source": {
    "blob": "002b89a0b0448e991afe18dcb493133c21d489af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 402,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant42893bb28ac022e8bd76fa27120baae48b3e46eda94908fcc18039cb24e0b611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4b20328fc196b80d4ee3e03c81ae1d33d16e6bd2dfb9e42b7698b70967a36d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant42893bb28ac022e8bd76fa27120baae48b3e46eda94908fcc18039cb24e0b611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ecc412e-404e-5dcb-39c9-2faa8e8aeb92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem integrableOn_iff (hs : IsFundamentalDomain G s μ) (ht : IsFundamentalDomain G t μ)
    {f : α → E} (hf : ∀ (g : G) (x), f (g • x) = f x) : IntegrableOn f s μ ↔ IntegrableOn f t μ :=
  and_congr (hs.aEStronglyMeasurable_on_iff ht hf) (hs.hasFiniteIntegral_on_iff ht hf)
#align measure_theory.is_fundamental_domain.integrable_on_iff MeasureTheory.IsFundamentalDomain.integrableOn_iff
#align measure_theory.is_add_fundamental_domain.integrable_on_iff MeasureTheory.IsAddFundamentalDomain.integrableOn_iff

variable [NormedSpace ℝ E] [CompleteSpace E]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant42893bb28ac022e8bd76fa27120baae48b3e46eda94908fcc18039cb24e0b611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant42893bb28ac022e8bd76fa27120baae48b3e46eda94908fcc18039cb24e0b611.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `002b89a0b0448e991afe18dcb493133c21d489af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
