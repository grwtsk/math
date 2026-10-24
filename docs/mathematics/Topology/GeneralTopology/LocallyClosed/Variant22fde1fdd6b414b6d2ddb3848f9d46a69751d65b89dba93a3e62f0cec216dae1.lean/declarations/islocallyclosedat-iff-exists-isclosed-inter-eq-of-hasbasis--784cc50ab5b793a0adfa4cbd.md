# isLocallyClosedAt_iff_exists_isClosed_inter_eq_of_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7665035979a7f4e66214225fdaa18a651ddec13e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7e88831-f8c8-6b63-bc01-cc6844cf2743",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d2c0ede-ca01-4dac-33fd-819ce1c57036",
  "kind": "lemma",
  "lexical_name": "isLocallyClosedAt_iff_exists_isClosed_inter_eq_of_hasBasis",
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
  "slug": "islocallyclosedat-iff-exists-isclosed-inter-eq-of-hasbasis--784cc50ab5b793a0adfa4cbd",
  "source": {
    "blob": "7665035979a7f4e66214225fdaa18a651ddec13e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:784cc50ab5b793a0adfa4cbd2e4e06e2f00a36c3b2cc1bf1144e506d5a150477",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d2c0ede-ca01-4dac-33fd-819ce1c57036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyClosedAt_iff_exists_isClosed_inter_eq_of_hasBasis {ι : Type*} {p : ι → Prop}
    {U : ι → Set X} {x : X} (H : (𝓝 x).HasBasis p U) : IsLocallyClosedAt s x ↔
    ∃ i, p i ∧ ∃ Z, IsClosed Z ∧ U i ∩ s = U i ∩ Z := by
  have (U V : Set X) (U_sub_V : U ⊆ V) (h : ∃ Z, IsClosed Z ∧ V ∩ s = V ∩ Z) :
      ∃ Z, IsClosed Z ∧ U ∩ s = U ∩ Z :=
    h.imp fun Z hZ ↦ hZ.imp_right fun eq ↦ inter_eq_inter_mono_left eq U_sub_V
  rw [IsLocallyClosedAt, H.exists_iff this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant22fde1fdd6b414b6d2ddb3848f9d46a69751d65b89dba93a3e62f0cec216dae1.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7665035979a7f4e66214225fdaa18a651ddec13e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
