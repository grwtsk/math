# surjectiveOnStalks_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf400a62-0699-6fcc-860c-766c52ce8add",
  "kind": "lemma",
  "lexical_name": "surjectiveOnStalks_of_surjective",
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
  "slug": "surjectiveonstalks-of-surjective--07b85d6a3564ef15493f6742",
  "source": {
    "blob": "a52cb1e1a4d7623a21c0012066e90a700a03e934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b85d6a3564ef15493f6742f241b13f0a59122972b68a5170551e18dced680a",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf400a62-0699-6fcc-860c-766c52ce8add`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjectiveOnStalks_of_surjective (h : Function.Surjective f) :
    SurjectiveOnStalks f :=
  surjectiveOnStalks_iff_forall_ideal.mpr fun _ _ s ↦
    let ⟨r, hr⟩ := h s
    ⟨r, 1, 1, by simpa [← Ideal.eq_top_iff_one], by simpa [← Ideal.eq_top_iff_one], by simp [hr]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52cb1e1a4d7623a21c0012066e90a700a03e934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
