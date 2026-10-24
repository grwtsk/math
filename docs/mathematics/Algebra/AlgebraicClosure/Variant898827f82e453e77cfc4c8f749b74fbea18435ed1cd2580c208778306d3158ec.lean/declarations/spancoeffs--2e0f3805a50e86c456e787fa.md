# spanCoeffs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a827344cf13d8a7e583c26a44ff56c2a6adf459c71c83acaafb1cd8984602763",
  "kind": "def",
  "lexical_name": "spanCoeffs",
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
  "slug": "spancoeffs--2e0f3805a50e86c456e787fa",
  "source": {
    "blob": "d77bc9d03bc9d168b7bda8218c18d2b8390d7601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 62,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e0f3805a50e86c456e787fa7dda412a87513adf2be75ba3c40da50c27969bfe",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a827344cf13d8a7e583c26a44ff56c2a6adf459c71c83acaafb1cd8984602763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanCoeffs : Ideal (MvPolynomial (Vars k) k) :=
  Ideal.span <| Set.range fun fn : Monics k × ℕ ↦ (subProdXSubC fn.1).coeff fn.2

variable {k}

/-- If a monic polynomial `f : k[X]` splits in `K`,
then it has as many roots (counting multiplicity) as its degree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant898827f82e453e77cfc4c8f749b74fbea18435ed1cd2580c208778306d3158ec.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d77bc9d03bc9d168b7bda8218c18d2b8390d7601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
