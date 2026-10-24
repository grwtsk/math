# Condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321315ca6103339196dc23eb67e1806dcf31345053a509013404926ea0065700",
  "kind": "def",
  "lexical_name": "Condition",
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
  "slug": "condition--5d35d22ecf00f025c2776b07",
  "source": {
    "blob": "4e1bedb312fd4d399921a0ffeb0cf1d01b7304df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 38,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d35d22ecf00f025c2776b076b1a4a62bb0c0c3634bed41c7fb4dc17949bda77",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321315ca6103339196dc23eb67e1806dcf31345053a509013404926ea0065700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Condition (α : ℝ) : Prop := (∀ n : ℕ, 0 < n → (n : ℤ) ∣ ∑ i ∈ Finset.Icc 1 n, ⌊i * α⌋)

/-- This is to be determined by the solver of the original problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1bedb312fd4d399921a0ffeb0cf1d01b7304df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
