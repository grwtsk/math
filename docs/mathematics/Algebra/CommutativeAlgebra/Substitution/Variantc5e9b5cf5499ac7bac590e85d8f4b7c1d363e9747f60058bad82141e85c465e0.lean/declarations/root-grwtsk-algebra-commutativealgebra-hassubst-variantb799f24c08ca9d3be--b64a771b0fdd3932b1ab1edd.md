# _root_.GRWTSK.Algebra.CommutativeAlgebra.HasSubst.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.MvPowerSeries.rescaleUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21b1d38f-0ef7-20a0-7f6d-52fb10b7dcba",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.HasSubst.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.MvPowerSeries.rescaleUnit",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-hassubst-variantb799f24c08ca9d3be--b64a771b0fdd3932b1ab1edd",
  "source": {
    "blob": "7d7a88e15f2af3856b39ffc8e00e97425ac6b8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 295,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64a771b0fdd3932b1ab1eddc913a8f2f15b64c98527be19514b6f906ec2bd7a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21b1d38f-0ef7-20a0-7f6d-52fb10b7dcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.HasSubst.Variantb799f24c08ca9d3be5dab28ef0b8993dd4ae98d9ce491bbd75be66a3b7dafcf0.MvPowerSeries.rescaleUnit (a : R) (f : R⟦X⟧) :
    MvPowerSeries.rescale (Function.const _ a) f = rescale a f := by
  ext d
  rw [coeff_rescale, coeff, MvPowerSeries.coeff_rescale]
  simp

end PowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variantc5e9b5cf5499ac7bac590e85d8f4b7c1d363e9747f60058bad82141e85c465e0.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d7a88e15f2af3856b39ffc8e00e97425ac6b8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
