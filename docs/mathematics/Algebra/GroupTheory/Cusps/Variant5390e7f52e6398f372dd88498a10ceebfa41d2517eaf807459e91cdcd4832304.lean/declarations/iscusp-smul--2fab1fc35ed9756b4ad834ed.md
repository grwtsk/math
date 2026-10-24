# IsCusp.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dfd87ce-5a4f-90b7-d6ff-2e70a8ae41d7",
  "kind": "lemma",
  "lexical_name": "IsCusp.smul",
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
  "slug": "iscusp-smul--2fab1fc35ed9756b4ad834ed",
  "source": {
    "blob": "5de653fffd1339d1e2644f04610ee86c9029b9c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fab1fc35ed9756b4ad834eda8633929d4ba0dc7bb456c7dd51bb892c7f88a0f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dfd87ce-5a4f-90b7-d6ff-2e70a8ae41d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCusp.smul {c : OnePoint ℝ} {𝒢 : Subgroup (GL (Fin 2) ℝ)} (hc : IsCusp c 𝒢)
    (g : GL (Fin 2) ℝ) : IsCusp (g • c) (ConjAct.toConjAct g • 𝒢) := by
  obtain ⟨p, hp𝒢, hpp, hpc⟩ := hc
  refine ⟨_, 𝒢.smul_mem_pointwise_smul _ _ hp𝒢, ?_, ?_⟩
  · simpa [ConjAct.toConjAct_smul] using hpp
  · simp [ConjAct.toConjAct_smul, mul_smul, hpc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5de653fffd1339d1e2644f04610ee86c9029b9c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
