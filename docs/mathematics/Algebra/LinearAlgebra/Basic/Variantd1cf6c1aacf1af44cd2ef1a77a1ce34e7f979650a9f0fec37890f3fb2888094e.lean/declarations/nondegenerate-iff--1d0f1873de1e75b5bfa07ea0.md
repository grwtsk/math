# nondegenerate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b3cc8e-e454-a4fa-8998-55c830108e02",
  "kind": "lemma",
  "lexical_name": "nondegenerate_iff",
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
  "slug": "nondegenerate-iff--1d0f1873de1e75b5bfa07ea0",
  "source": {
    "blob": "ef05c33a6057c9265bfcf4e939e80d39782fdbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 897,
    "line": 890,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d0f1873de1e75b5bfa07ea05cd8c2c719a2f66e623e3ed744b5444a386f009c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b3cc8e-e454-a4fa-8998-55c830108e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–897.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nondegenerate_iff (hs : ∀ x, 0 ≤ B x x) (hB : B.IsSymm) :
    B.Nondegenerate ↔ ∀ x, B x x = 0 ↔ x = 0 := by
  simp_rw [hB.isRefl.nondegenerate_iff_separatingLeft, separatingLeft_iff_ker_eq_bot,
    Submodule.eq_bot_iff, B.apply_apply_same_eq_zero_iff hs hB, mem_ker]
  exact forall_congr' fun x ↦ by aesop

/-- A convenience variant of `LinearMap.BilinForm.nondegenerate_iff` characterising nondegeneracy as
positive definiteness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd1cf6c1aacf1af44cd2ef1a77a1ce34e7f979650a9f0fec37890f3fb2888094e.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef05c33a6057c9265bfcf4e939e80d39782fdbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
