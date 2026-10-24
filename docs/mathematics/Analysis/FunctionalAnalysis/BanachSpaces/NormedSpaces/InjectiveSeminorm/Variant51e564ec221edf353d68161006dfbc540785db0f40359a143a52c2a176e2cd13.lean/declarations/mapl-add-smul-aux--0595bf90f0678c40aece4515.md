# mapL_add_smul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c24595b665c1e32d941023a2cff6c0858f663391",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 398,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6db0417f-32f7-6a99-95ab-7fa7b1929a01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773c34e9-3f06-c4ad-1fbe-05e8538fc86b",
  "kind": "theorem",
  "lexical_name": "mapL_add_smul_aux",
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
  "slug": "mapl-add-smul-aux--0595bf90f0678c40aece4515",
  "source": {
    "blob": "c24595b665c1e32d941023a2cff6c0858f663391",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 398,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0595bf90f0678c40aece4515a23be23edf133376781b36fe0753e77348877835",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773c34e9-3f06-c4ad-1fbe-05e8538fc86b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mapL_add_smul_aux {ι : Type uι}
    {E : ι → Type uE} [(i : ι) → SeminormedAddCommGroup (E i)] [(i : ι) → NormedSpace 𝕜 (E i)]
    {E' : ι → Type u_1} [(i : ι) → SeminormedAddCommGroup (E' i)] [(i : ι) → NormedSpace 𝕜 (E' i)]
    (f : (i : ι) → E i →L[𝕜] E' i)
    [DecidableEq ι] (i : ι) (u : E i →L[𝕜] E' i) :
    (fun j ↦ (update f i u j).toLinearMap) =
      update (fun j ↦ (f j).toLinearMap) i u.toLinearMap := by
  symm
  rw [update_eq_iff]
  constructor
  · simp only [update_self]
  · exact fun _ h ↦ by simp only [ne_eq, h, not_false_eq_true, update_of_ne]

open Function in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/InjectiveSeminorm/Variant51e564ec221edf353d68161006dfbc540785db0f40359a143a52c2a176e2cd13.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c24595b665c1e32d941023a2cff6c0858f663391` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
