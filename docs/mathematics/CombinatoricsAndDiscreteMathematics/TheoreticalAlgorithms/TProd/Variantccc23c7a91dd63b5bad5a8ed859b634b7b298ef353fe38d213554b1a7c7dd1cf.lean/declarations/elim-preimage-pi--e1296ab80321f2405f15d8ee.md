# elim_preimage_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d225bb11-2bca-c735-6203-7bc8410c2753",
  "kind": "theorem",
  "lexical_name": "elim_preimage_pi",
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
  "slug": "elim-preimage-pi--e1296ab80321f2405f15d8ee",
  "source": {
    "blob": "8b4d660aaca03c12426c36b09861f5dd2634cd4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1296ab80321f2405f15d8ee625127e15ca6988b5febc876bc266cc2a3eea70f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d225bb11-2bca-c735-6203-7bc8410c2753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elim_preimage_pi [DecidableEq ι] {l : List ι} (hnd : l.Nodup) (h : ∀ i, i ∈ l)
    (t : ∀ i, Set (α i)) : TProd.elim' h ⁻¹' pi univ t = Set.tprod l t := by
  have h2 : { i | i ∈ l } = univ := by
    ext i
    simp [h]
  rw [← h2, ← mk_preimage_tprod, preimage_preimage]
  simp only [TProd.mk_elim hnd h]
  dsimp; rfl
#align set.elim_preimage_pi Set.elim_preimage_pi

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b4d660aaca03c12426c36b09861f5dd2634cd4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
