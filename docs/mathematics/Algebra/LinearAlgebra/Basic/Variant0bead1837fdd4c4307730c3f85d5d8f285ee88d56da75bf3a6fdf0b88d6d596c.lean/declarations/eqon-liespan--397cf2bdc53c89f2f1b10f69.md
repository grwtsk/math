# eqOn_lieSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:203e71e6-0fb6-9d81-1bbc-b0e55644c08c",
  "kind": "theorem",
  "lexical_name": "eqOn_lieSpan",
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
  "slug": "eqon-liespan--397cf2bdc53c89f2f1b10f69",
  "source": {
    "blob": "3ad5da206c38c69ad087a043509168c091a9dd99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:397cf2bdc53c89f2f1b10f691e9dfecdaa61c02b1362bd89db5021d7cb05554a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:203e71e6-0fb6-9d81-1bbc-b0e55644c08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_lieSpan {s : Set L} (h : Set.EqOn D1 D2 s) :
    Set.EqOn D1 D2 (LieSubalgebra.lieSpan R L s) := by
  intro _ hx
  induction hx using LieSubalgebra.lieSpan_induction with
  | mem x hx => exact h hx
  | zero => simp
  | add x y _ _ hx hy => simp [hx, hy]
  | smul t x _ hx => simp [hx]
  | lie x y _ _ hx hy => simp [hx, hy]

/-- If the Lie span of a set is the whole Lie algebra, then two Lie derivations equal on this set
are equal on the whole Lie algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0bead1837fdd4c4307730c3f85d5d8f285ee88d56da75bf3a6fdf0b88d6d596c.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad5da206c38c69ad087a043509168c091a9dd99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
