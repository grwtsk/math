# integrable_cexp_mul_of_re_mem_interior_integrableExpSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93890ba6-b531-431a-4ab1-05636ed6ab95",
  "kind": "lemma",
  "lexical_name": "integrable_cexp_mul_of_re_mem_interior_integrableExpSet",
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
  "slug": "integrable-cexp-mul-of-re-mem-interior-integrableexpset--f2eacd99443e17844d45ea44",
  "source": {
    "blob": "883c2b712afc8fbc98050e857165c78eb6d6840c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 567,
    "line": 562,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2eacd99443e17844d45ea44776d1252ce6e52685395b4cd51501a6c2e9bbc2c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93890ba6-b531-431a-4ab1-05636ed6ab95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–567.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_cexp_mul_of_re_mem_interior_integrableExpSet
    (hz : z.re ∈ interior (integrableExpSet X μ)) :
    Integrable (fun ω ↦ cexp (z * X ω)) μ :=
  integrable_cexp_mul_of_re_mem_integrableExpSet
    (aemeasurable_of_mem_interior_integrableExpSet hz) (interior_subset hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883c2b712afc8fbc98050e857165c78eb6d6840c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
