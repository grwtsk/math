# Flow.TaoHeat.localHeatResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c8ba52d6e31e0b5daf8188908c8e42e36db4adce4969d965301cef7c38b920b",
  "kind": "def",
  "lexical_name": "Flow.TaoHeat.localHeatResidue",
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
  "slug": "flow-taoheat-localheatresidue--eb8a1df5e1d9894f39cee8cb",
  "source": {
    "blob": "1be568d6a4c9b120037dc6367409e4a5b6797a51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arithmetic/Variantdbec5bc71a82806b9be7ade8b118f362a690884c8bfcbba3b7e1cadbcfd209a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb8a1df5e1d9894f39cee8cb969f1eeb888e0d0f2bfa2b837719db038beb73de",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arithmetic/Variantdbec5bc71a82806b9be7ade8b118f362a690884c8bfcbba3b7e1cadbcfd209a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c8ba52d6e31e0b5daf8188908c8e42e36db4adce4969d965301cef7c38b920b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Flow.TaoHeat.localHeatResidue
    (curve : String)
    (p : Nat)
    (t u z : Flow.Expression String) :
    Flow.Expression String :=
  Flow.Expression.attendMany
    [.heatResidue, .sieve, .lFunction]
    (Flow.Expression.pendingBinaryAction
      .heatKernel
      (Flow.localFactorSymbolic curve p)
      (Flow.TaoHeat.kernel t u z)
      [.heatResidue, .sieve, .lFunction])

/-- Prime-indexed heat flow over primes up to `bound`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arithmetic/Variantdbec5bc71a82806b9be7ade8b118f362a690884c8bfcbba3b7e1cadbcfd209a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Arithmetic/Variantdbec5bc71a82806b9be7ade8b118f362a690884c8bfcbba3b7e1cadbcfd209a1.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be568d6a4c9b120037dc6367409e4a5b6797a51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
