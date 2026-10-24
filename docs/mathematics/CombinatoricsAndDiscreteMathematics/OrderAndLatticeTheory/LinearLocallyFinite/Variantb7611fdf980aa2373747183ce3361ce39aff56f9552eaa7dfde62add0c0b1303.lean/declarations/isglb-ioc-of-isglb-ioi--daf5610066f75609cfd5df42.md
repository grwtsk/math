# isGLB_Ioc_of_isGLB_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51040d49-3772-bd93-93ad-026b0b88e0ac",
  "kind": "theorem",
  "lexical_name": "isGLB_Ioc_of_isGLB_Ioi",
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
  "slug": "isglb-ioc-of-isglb-ioi--daf5610066f75609cfd5df42",
  "source": {
    "blob": "9e8100fdb58f703d1b1ba2feb76e29892752e498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daf5610066f75609cfd5df42969274b38b30c48ddf5394b072816b71ed6128d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51040d49-3772-bd93-93ad-026b0b88e0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGLB_Ioc_of_isGLB_Ioi {i j k : ι} (hij_lt : i < j) (h : IsGLB (Set.Ioi i) k) :
    IsGLB (Set.Ioc i j) k := by
  simp_rw [IsGLB, IsGreatest, mem_upperBounds, mem_lowerBounds] at h ⊢
  refine ⟨fun x hx ↦ h.1 x hx.1, fun x hx ↦ h.2 x ?_⟩
  intro y hy
  rcases le_or_lt y j with h_le | h_lt
  · exact hx y ⟨hy, h_le⟩
  · exact le_trans (hx j ⟨hij_lt, le_rfl⟩) h_lt.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb7611fdf980aa2373747183ce3361ce39aff56f9552eaa7dfde62add0c0b1303.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8100fdb58f703d1b1ba2feb76e29892752e498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
