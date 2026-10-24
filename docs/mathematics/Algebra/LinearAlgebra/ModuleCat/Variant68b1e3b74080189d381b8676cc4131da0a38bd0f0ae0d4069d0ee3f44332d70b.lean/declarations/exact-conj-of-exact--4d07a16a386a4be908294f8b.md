# exact_conj_of_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94e90f0d-2741-980f-9d30-3b84ef798048",
  "kind": "lemma",
  "lexical_name": "exact_conj_of_exact",
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
  "slug": "exact-conj-of-exact--4d07a16a386a4be908294f8b",
  "source": {
    "blob": "94c486d91bbd05fe806ad7ed71ca990836b9a77a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 271,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant68b1e3b74080189d381b8676cc4131da0a38bd0f0ae0d4069d0ee3f44332d70b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d07a16a386a4be908294f8bba2554cb2e04f126cc7692aa5bb51e41346a3f15",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant68b1e3b74080189d381b8676cc4131da0a38bd0f0ae0d4069d0ee3f44332d70b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94e90f0d-2741-980f-9d30-3b84ef798048`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exact_conj_of_exact (exact : Function.Exact f g) : Function.Exact
    ((eN.symm.comp f).comp eM.toLinearMap) (eL.symm.comp (g.comp eN.toLinearMap)) := by
  rwa [LinearEquiv.precomp_exact_iff_exact, LinearEquiv.postcomp_exact_iff_exact,
    LinearEquiv.conj_symm_exact_iff_exact]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant68b1e3b74080189d381b8676cc4131da0a38bd0f0ae0d4069d0ee3f44332d70b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant68b1e3b74080189d381b8676cc4131da0a38bd0f0ae0d4069d0ee3f44332d70b.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94c486d91bbd05fe806ad7ed71ca990836b9a77a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
