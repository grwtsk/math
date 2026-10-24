# isLocallyClosedAt_iff_exists_eq_inter_closure_of_hasBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8aadaa3-1a96-10b7-b83a-a68076cd2c1c",
  "kind": "lemma",
  "lexical_name": "isLocallyClosedAt_iff_exists_eq_inter_closure_of_hasBasis",
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
  "slug": "islocallyclosedat-iff-exists-eq-inter-closure-of-hasbasis--6bd65aa09c58acb497908abc",
  "source": {
    "blob": "6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bd65aa09c58acb497908abcededeb50d1bb4c5ceb44f1c5ccf26f0ff6261d90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8aadaa3-1a96-10b7-b83a-a68076cd2c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyClosedAt_iff_exists_eq_inter_closure_of_hasBasis {ι : Type*} {p : ι → Prop}
    {U : ι → Set X} {x : X} (H : (𝓝 x).HasBasis p U) : IsLocallyClosedAt s x ↔
    ∃ i, p i ∧ U i ∩ s = U i ∩ closure s := by
  have (U V : Set X) (U_sub_V : U ⊆ V) (h : V ∩ s = V ∩ closure s) : U ∩ s = U ∩ closure s :=
    inter_eq_inter_mono_left h U_sub_V
  rw [isLocallyClosedAt_iff_exists_eq_inter_closure, H.exists_iff this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
