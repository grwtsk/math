# smul_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e04fa8ff-cd6d-93ec-dfa7-9451c9a29e8a",
  "kind": "lemma",
  "lexical_name": "smul_induction_on",
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
  "slug": "smul-induction-on--85e286b3f5e67d33d5620713",
  "source": {
    "blob": "7bcb70192a84359815c44e513b80041ea4334461",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85e286b3f5e67d33d5620713219052f975f03b775eb07f2fa20340b15c4f82bd",
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

Occurrence: `result:e04fa8ff-cd6d-93ec-dfa7-9451c9a29e8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma smul_induction_on {C : A → Prop} {a : A} (ha : a ∈ M • N)
    (hm : ∀ m ∈ M, ∀ n ∈ N, C (m • n)) (hadd : ∀ x y, C x → C y → C (x + y)) : C a :=
  (@smul_le _ _ _ _ _ _ _ ⟨⟨setOf C, hadd _ _⟩, by
    simpa only [smul_zero] using hm _ (zero_mem _) _ (zero_mem _)⟩).2 hm ha

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variantcc268ef2cc8d243e83f603bb433d85e1a3c40a798a7fd818b1b396f49287f5d6.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bcb70192a84359815c44e513b80041ea4334461` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
