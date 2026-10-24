# iSupIndep_stratum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76a58981-7003-5736-d699-c1c2bf372982",
  "kind": "theorem",
  "lexical_name": "iSupIndep_stratum",
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
  "slug": "isupindep-stratum--7da1a5eebe03c85d836ccb13",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da1a5eebe03c85d836ccb13b78b0edfd703ac91da86b61033d7d60c4323395c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76a58981-7003-5736-d699-c1c2bf372982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSupIndep_stratum : iSupIndep u.stratum := by
  intro c
  rw [Submodule.disjoint_def']
  intro a ha b hb hab
  obtain ⟨f, hf⟩ := (Submodule.mem_iSup_iff_exists_dfinsupp' _ b).mp hb
  obtain hf' := congr(ArchimedeanClass.mk $hf)
  contrapose! hf' with h0
  rw [← hab, DFinsupp.sum]
  by_cases! hnonempty : f.support.Nonempty
  · have hmem (x : FiniteArchimedeanClass M) : (f x).val ∈ u.stratum x :=
      Set.mem_of_mem_of_subset (f x).prop (by simp)
    have hmono : StrictMonoOn (fun i ↦ ArchimedeanClass.mk (f i).val) f.support := by
      intro x hx y hy hxy
      change ArchimedeanClass.mk (f x).val < ArchimedeanClass.mk (f y).val
      rw [u.archimedeanClassMk_of_mem_stratum (hmem x) (by simpa using hx)]
      rw [u.archimedeanClassMk_of_mem_stratum (hmem y) (by simpa using hy)]
      exact hxy
    rw [ArchimedeanClass.mk_sum hnonempty hmono, u.archimedeanClassMk_of_mem_stratum (hmem _)
      (by simpa using f.support.min'_mem hnonempty), ← val_mk h0, Subtype.coe_ne_coe]
    by_contra!
    obtain h := this ▸ Finset.min'_mem f.support hnonempty
    contrapose! h
    have := u.archimedeanClassMk_of_mem_stratum ha h0
    rw [← val_mk h0, ← Subtype.ext_iff] at this
    simpa [DFinsupp.notMem_support_iff, this] using (f c).prop
  · rw [hnonempty]
    symm
    simpa using h0

/-- The minimal submodule that contains all strata.

This is the domain of our "base" embedding into Hahn series, which we will extend into a full
embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
