# exists_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e644a0d4-1abd-7bc2-47f0-199040256149",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76caa3f3-b2e6-3f53-f664-2ab0a3cad85e",
  "kind": "theorem",
  "lexical_name": "exists_const",
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
  "slug": "exists-const--aac9b8e26d01afbd771a56d9",
  "source": {
    "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 285,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac9b8e26d01afbd771a56d96e9f4c85ebd4aea3f59e3692f25368efdc057bfa",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76caa3f3-b2e6-3f53-f664-2ab0a3cad85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_const (U) (s : Γ(M, U)) (x : PrimeSpectrum.Top R)
    (hx : x ∈ U) :
    ∃ (g : R) (_ : x ∈ basicOpen g) (i : basicOpen g ≤ U) (f : M),
      const f g _ le_rfl = (structureSheafInType R M).1.map i.hom.op s := by
  obtain ⟨V, hxV, iVU, f, g, hfg⟩ := s.2 ⟨x, hx⟩
  obtain ⟨_, ⟨_, ⟨g', rfl⟩, rfl⟩, hxg', hg'U⟩ :=
    PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hxV V.2
  refine ⟨g' * g, ?_, ?_, g' • f, Subtype.ext <| funext fun ⟨y, hy⟩ ↦ ?_⟩ <;>
    simp only [PrimeSpectrum.basicOpen_mul]
  · exact ⟨hxg', (hfg ⟨x, hxV⟩).1⟩
  · exact inf_le_left.trans (hg'U.trans iVU.le)
  · rw [PrimeSpectrum.basicOpen_mul] at hy
    obtain ⟨hgy, H⟩ := hfg ⟨y, hg'U hy.1⟩
    refine (LocalizedModule.mk_eq.mpr ⟨1, ?_⟩).trans H.symm
    simp [Submonoid.smul_def, ← smul_assoc]; ring_nf

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
