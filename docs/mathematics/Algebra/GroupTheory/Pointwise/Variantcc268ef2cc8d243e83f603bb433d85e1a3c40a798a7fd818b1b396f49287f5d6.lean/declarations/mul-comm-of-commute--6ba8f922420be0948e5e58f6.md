# mul_comm_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ab9762a-5aa1-3c90-6ee9-dbf15cc5286c",
  "kind": "lemma",
  "lexical_name": "mul_comm_of_commute",
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
  "slug": "mul-comm-of-commute--6ba8f922420be0948e5e58f6",
  "source": {
    "blob": "7bcb70192a84359815c44e513b80041ea4334461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 205,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba8f922420be0948e5e58f6a5250f9d0068897440684e6d5d332bb5c1e047f9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ab9762a-5aa1-3c90-6ee9-dbf15cc5286c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_comm_of_commute (h : ∀ m ∈ M, ∀ n ∈ N, Commute m n) : M * N = N * M :=
  le_antisymm (mul_le.mpr fun m hm n hn ↦ h m hm n hn ▸ mul_mem_mul hn hm)
    (mul_le.mpr fun n hn m hm ↦ h m hm n hn ▸ mul_mem_mul hm hn)

end NonUnitalNonAssocSemiring

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing R]

/-- `AddSubmonoid.neg` distributes over multiplication.

This is available as an instance in the `Pointwise` locale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bcb70192a84359815c44e513b80041ea4334461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
