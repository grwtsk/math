# map_piecewise_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1a71550b49276f7d20eab13a148752a1ce0fad2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea20be3-2fcc-0295-80c7-d0bd01f68aa5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ecfb752-efbf-27eb-9746-e281556ac711",
  "kind": "theorem",
  "lexical_name": "map_piecewise_smul",
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
  "slug": "map-piecewise-smul--d465c7065765d5fac4755183",
  "source": {
    "blob": "d1a71550b49276f7d20eab13a148752a1ce0fad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 836,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d465c7065765d5fac4755183bd6520ab9b1f5e3831fb5c8f55203a2533da132a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ecfb752-efbf-27eb-9746-e281556ac711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_piecewise_smul [DecidableEq ι] (c : ι → R) (m : ∀ i, M₁ i) (s : Finset ι) :
    f (s.piecewise (fun i => c i • m i) m) = (∏ i in s, c i) • f m := by
  refine' s.induction_on (by simp) _
  intro j s j_not_mem_s Hrec
  have A :
    Function.update (s.piecewise (fun i => c i • m i) m) j (m j) =
      s.piecewise (fun i => c i • m i) m := by
    ext i
    by_cases h : i = j
    · rw [h]
      simp [j_not_mem_s]
    · simp [h]
  rw [s.piecewise_insert, f.map_smul, A, Hrec]
  simp [j_not_mem_s, mul_smul]
#align multilinear_map.map_piecewise_smul MultilinearMap.map_piecewise_smul

/-- Multiplicativity of a multilinear map along all coordinates at the same time,
writing `f (fun i => c i • m i)` as `(∏ i, c i) • f m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta782f8143bfc3bd8ba69ca58e5cfbcba3f080944a8e5e116af0ec5962a7bf49f.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a71550b49276f7d20eab13a148752a1ce0fad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
