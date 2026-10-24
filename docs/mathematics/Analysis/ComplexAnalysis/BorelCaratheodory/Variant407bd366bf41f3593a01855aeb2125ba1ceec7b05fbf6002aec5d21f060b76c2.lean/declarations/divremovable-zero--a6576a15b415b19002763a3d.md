# divRemovable_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e88c917dff4dd988246ffbaed07cd5b86d3e48ecb5d832055d87fa5b6833cc2",
  "kind": "abbrev",
  "lexical_name": "divRemovable_zero",
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
  "slug": "divremovable-zero--a6576a15b415b19002763a3d",
  "source": {
    "blob": "4f5e57a1c03525694803e7881814cee6d3b608a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 22,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6576a15b415b19002763a3d44136a5d529eb9c2263036f689f0d5ca4aefe91e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e88c917dff4dd988246ffbaed07cd5b86d3e48ecb5d832055d87fa5b6833cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev divRemovable_zero (f : ℂ → ℂ) : ℂ → ℂ :=
  Function.update (fun z ↦ f z / z) 0 (deriv f 0)

@[blueprint "divRemovable_zero_of_ne_zero"
  (title := "divRemovalbe-zero-of-ne-zero")
  (statement := /--
    Let $f$ be a complex function and let $z\neq 0$. Then, with
    $g$ defined as in Definition~\ref{divRemovable_zero},
    $$g(z)=\frac{f(z)}{z}.$$
  -/)
  (proof := /--
    This follows directly from the definition of $g$.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant407bd366bf41f3593a01855aeb2125ba1ceec7b05fbf6002aec5d21f060b76c2.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f5e57a1c03525694803e7881814cee6d3b608a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
