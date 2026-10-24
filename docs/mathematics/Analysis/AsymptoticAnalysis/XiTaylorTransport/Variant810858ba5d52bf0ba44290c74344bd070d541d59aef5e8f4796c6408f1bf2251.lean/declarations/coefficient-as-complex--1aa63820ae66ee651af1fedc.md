# coefficient_as_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d148863e4a71c038d3409ed384ceb331c875c1b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c65dcba-d67f-7143-766e-b4b12947dbec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ace65b8c-22a9-013a-4b46-8f98a5a99893",
  "kind": "theorem",
  "lexical_name": "coefficient_as_complex",
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
  "slug": "coefficient-as-complex--1aa63820ae66ee651af1fedc",
  "source": {
    "blob": "d148863e4a71c038d3409ed384ceb331c875c1b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 107,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa63820ae66ee651af1fedc8e4f4669c20c6bfa8681999425379c3ce8a6f6d2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace65b8c-22a9-013a-4b46-8f98a5a99893`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficient_as_complex (k : ℕ) :
    (coefficient k : ℂ) = iteratedDeriv (2 * k) xi (1 / 2) / ((2 * k).factorial : ℂ) := by
  have hr : ((iteratedDeriv (2 * k) xi (1 / 2)).re : ℂ) =
      iteratedDeriv (2 * k) xi (1 / 2) := by
    apply Complex.ext
    · simp
    · simp [xi_derivative_center_real]
  simp only [coefficient, Complex.ofReal_div, Complex.ofReal_natCast, hr]

/-- Full centered Taylor series of the actual entire xi function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiTaylorTransport/Variant810858ba5d52bf0ba44290c74344bd070d541d59aef5e8f4796c6408f1bf2251.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d148863e4a71c038d3409ed384ceb331c875c1b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
