# exists_isClosed_singleton_of_isJacobsonRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31db5992ef94532287e99a8dba689484fef71b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5759c04-bff7-e520-50b9-d0029f3b9fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b910a57-d0af-f17d-f15a-bee4bff793dd",
  "kind": "lemma",
  "lexical_name": "exists_isClosed_singleton_of_isJacobsonRing",
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
  "slug": "exists-isclosed-singleton-of-isjacobsonring--d76f9676d18a7377a8b140f7",
  "source": {
    "blob": "31db5992ef94532287e99a8dba689484fef71b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d76f9676d18a7377a8b140f74f89d805226838218edf8cb310f1d583585fcec7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b910a57-d0af-f17d-f15a-bee4bff793dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_isClosed_singleton_of_isJacobsonRing [IsJacobsonRing R]
    (s : (Set (PrimeSpectrum R))) (hs : IsOpen s) (hs' : s.Nonempty) :
    ∃ x ∈ s, IsClosed {x} := by
  simp_rw [isClosed_singleton_iff_isMaximal]
  obtain ⟨I, hI'⟩ := (isClosed_iff_zeroLocus_ideal _).mp hs.isClosed_compl
  simp_rw [← @Set.notMem_compl_iff _ s, hI', mem_zeroLocus]
  have := hs'.ne_empty
  contrapose! this
  simp_rw [not_imp_not] at this
  rw [← Set.compl_univ, eq_compl_comm, hI', eq_comm, ← zeroLocus_bot,
    zeroLocus_eq_iff, Ideal.radical_eq_jacobson, Ideal.radical_eq_jacobson]
  refine le_antisymm (le_sInf ?_) (Ideal.jacobson_mono bot_le)
  rintro x ⟨-, hx⟩
  exact sInf_le ⟨this ⟨x, hx.isPrime⟩ hx, hx⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Jacobson/Variant8bc41666e195ba26901dacab944e86fc0258233f49c7bcecac26ad0034204022.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31db5992ef94532287e99a8dba689484fef71b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
