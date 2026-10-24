# IsSeqCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7593299a62e440153129416b5e488fc07a0364f29c2d6d3c4444619198a3f2be",
  "kind": "def",
  "lexical_name": "IsSeqCompact",
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
  "slug": "isseqcompact--eb1aa510067e9685960d8c43",
  "source": {
    "blob": "b9326a1eef80784cf5b6524a659ced02227e855d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb1aa510067e9685960d8c439d2b1d6cee7cee30526da1d8577ce1809e033f07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7593299a62e440153129416b5e488fc07a0364f29c2d6d3c4444619198a3f2be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSeqCompact (s : Set X) :=
  ∀ ⦃x : ℕ → X⦄, (∀ n, x n ∈ s) → ∃ a ∈ s, ∃ φ : ℕ → ℕ, StrictMono φ ∧ Tendsto (x ∘ φ) atTop (𝓝 a)

variable (X)

/-- A space `X` is sequentially compact if every sequence in `X` has a
converging subsequence. -/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9326a1eef80784cf5b6524a659ced02227e855d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
