# StarModule.smul_lt_smul_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46e89173-5a8c-d33f-56f8-0e0fe3f24ee9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:398490aa-7b6b-0df2-eff3-ac25f55d317c",
  "kind": "lemma",
  "lexical_name": "StarModule.smul_lt_smul_of_pos",
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
  "slug": "starmodule-smul-lt-smul-of-pos--13f0f41f627cd9b2d8fe5b31",
  "source": {
    "blob": "9e12f5af8a0eddac3a2b81d376735edbd2f197ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 322,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13f0f41f627cd9b2d8fe5b31d2c20b3f7d5561fe0947d0efe557e8278d89bfb6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:398490aa-7b6b-0df2-eff3-ac25f55d317c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StarModule.smul_lt_smul_of_pos {a b : A} {c : R} (hab : a < b) (hc : 0 < c) :
    c • a < c • b := by
  rw [← sub_pos] at hab ⊢
  rw [← smul_sub]
  refine lt_of_le_of_ne ?le ?ne
  case le =>
    have hab := le_of_lt hab
    rw [StarOrderedRing.nonneg_iff] at hab ⊢
    refine AddSubmonoid.closure_induction ?mem ?zero ?add hab
    case mem =>
      intro x hx
      have hc := le_of_lt hc
      rw [StarOrderedRing.nonneg_iff] at hc
      refine AddSubmonoid.closure_induction ?memc ?zeroc ?addc hc
      case memc =>
        intro c' hc'
        obtain ⟨z, hz⟩ := hc'
        obtain ⟨y, hy⟩ := hx
        apply AddSubmonoid.subset_closure
        refine ⟨z • y, ?_⟩
        simp only [star_smul, smul_mul_smul_comm, hz, hy]
      case zeroc => simpa only [zero_smul] using zero_mem _
      case addc => exact fun c' d _ _ ↦ by simpa only [add_smul] using add_mem
    case zero => simpa only [smul_zero] using zero_mem _
    case add => exact fun x y _ _ ↦ by simpa only [smul_add] using add_mem
  case ne =>
    refine (smul_ne_zero ?_ ?_).symm
    · exact (ne_of_lt hc).symm
    · exact (ne_of_lt hab).symm

end StarModule

section OrderClass

variable {F R S : Type*} [NonUnitalSemiring R] [PartialOrder R] [StarRing R]
  [StarOrderedRing R]
variable [NonUnitalSemiring S] [PartialOrder S] [StarRing S] [StarOrderedRing S]

-- we prove this auxiliary lemma in order to avoid duplicating the proof twice below.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variantc111f905c5c7c9d1ab51c72b5c942b30b9399c84994731f9ad1d53835ab7ff37.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e12f5af8a0eddac3a2b81d376735edbd2f197ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
