# range_comap_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:638e8880-fd8b-356e-b808-ecc0e2d74f91",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09ed16f1-5f0f-d9bc-d46e-2022c9a9c13f",
  "kind": "lemma",
  "lexical_name": "range_comap_snd",
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
  "slug": "range-comap-snd--979c67e5a70b4b0cd23160b1",
  "source": {
    "blob": "8595a4eca910e154d0983fef668e2cc977aa1a0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 465,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979c67e5a70b4b0cd23160b19da223f20a44cfbd619e8fa714a717ca5942c77a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09ed16f1-5f0f-d9bc-d46e-2022c9a9c13f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_comap_snd :
    Set.range (comap (RingHom.snd R S)) = zeroLocus (RingHom.ker (RingHom.snd R S)) := by
  refine Set.ext fun p ↦ ⟨?_, fun h ↦ ?_⟩
  · rintro ⟨I, hI, rfl⟩; exact Ideal.comap_mono bot_le
  obtain ⟨p, hp, eq⟩ | ⟨p, hp, eq⟩ := p.1.ideal_prod_prime.mp p.2
  · refine (hp.ne_top <| (Ideal.eq_top_iff_one _).mpr ?_).elim
    simpa [eq] using h (show (1, 0) ∈ RingHom.ker (RingHom.snd R S) by simp)
  · exact ⟨⟨p, hp⟩, PrimeSpectrum.ext <| by simpa [Ideal.prod] using eq.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variantf400ec04ef7cbe468ce7109ba581b2abb13a163bc23361388d6c3e4846b2426d.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8595a4eca910e154d0983fef668e2cc977aa1a0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
