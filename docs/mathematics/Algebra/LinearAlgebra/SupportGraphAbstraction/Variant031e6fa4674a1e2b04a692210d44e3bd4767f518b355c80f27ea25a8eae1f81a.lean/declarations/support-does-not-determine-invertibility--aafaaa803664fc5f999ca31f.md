# support_does_not_determine_invertibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81c3e98a-1454-5144-c8b7-60a72ffc93b2",
  "kind": "theorem",
  "lexical_name": "support_does_not_determine_invertibility",
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
  "slug": "support-does-not-determine-invertibility--aafaaa803664fc5f999ca31f",
  "source": {
    "blob": "cce17602f1a0548073778e62fd5830c55126adbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aafaaa803664fc5f999ca31fcafdd0860f2c419dc1bc46e1ba3036e140c2c3c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c3e98a-1454-5144-c8b7-60a72ffc93b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_does_not_determine_invertibility :
    ∃ left right : BitMatrix 2 2,
      left ≠ right ∧
      undirectedSupport left = undirectedSupport right ∧
      (boolZModMatrix left).det = 1 ∧
      (boolZModMatrix right).det = 0 :=
  ⟨swapSupportExample, orientedSupportExample,
    support_examples_distinct,
    support_examples_same_abstraction,
    swapSupportExample_det,
    orientedSupportExample_det⟩

/-- Machine-readable declaration of what the chosen abstraction forgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant031e6fa4674a1e2b04a692210d44e3bd4767f518b355c80f27ea25a8eae1f81a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cce17602f1a0548073778e62fd5830c55126adbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
