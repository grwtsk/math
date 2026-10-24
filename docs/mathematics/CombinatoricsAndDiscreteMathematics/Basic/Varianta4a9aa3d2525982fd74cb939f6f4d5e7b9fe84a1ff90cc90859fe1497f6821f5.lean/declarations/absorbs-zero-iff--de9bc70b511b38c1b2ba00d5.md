# absorbs_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c8015cc7cb07119f74084423b1c82708db5b43c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3340858e-0957-d0d0-fb80-6b1a58cdd90b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57d0baa7-7d1c-bec7-1d88-537fc9919336",
  "kind": "theorem",
  "lexical_name": "absorbs_zero_iff",
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
  "slug": "absorbs-zero-iff--de9bc70b511b38c1b2ba00d5",
  "source": {
    "blob": "9c8015cc7cb07119f74084423b1c82708db5b43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de9bc70b511b38c1b2ba00d529fbb2ffba2b73f71719cd08b67b26c0f4458438",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d0baa7-7d1c-bec7-1d88-537fc9919336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absorbs_zero_iff : Absorbs 𝕜 s 0 ↔ (0 : E) ∈ s := by
  refine' ⟨_, fun h => ⟨1, zero_lt_one, fun a _ => zero_subset.2 <| zero_mem_smul_set h⟩⟩
  rintro ⟨r, hr, h⟩
  obtain ⟨a, ha⟩ := NormedSpace.exists_lt_norm 𝕜 𝕜 r
  have := h _ ha.le
  rwa [zero_subset, zero_mem_smul_set_iff] at this
  exact norm_ne_zero_iff.1 (hr.trans ha).ne'
#align absorbs_zero_iff absorbs_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4a9aa3d2525982fd74cb939f6f4d5e7b9fe84a1ff90cc90859fe1497f6821f5.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c8015cc7cb07119f74084423b1c82708db5b43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
