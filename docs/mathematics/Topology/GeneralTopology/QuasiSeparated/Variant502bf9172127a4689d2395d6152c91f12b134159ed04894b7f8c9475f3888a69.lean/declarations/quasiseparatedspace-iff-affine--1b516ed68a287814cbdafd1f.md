# quasiSeparatedSpace_iff_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6355b35a-a671-4fe8-780f-6ef27044991c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e6daa58-0d87-1f2a-1246-a4ae6b28b471",
  "kind": "theorem",
  "lexical_name": "quasiSeparatedSpace_iff_affine",
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
  "slug": "quasiseparatedspace-iff-affine--1b516ed68a287814cbdafd1f",
  "source": {
    "blob": "64d2a0a40efa2d762aac283a9612445e6427169d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b516ed68a287814cbdafd1fa10a0d1aa9be5e3e8ed6533906c606fa6838d9c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e6daa58-0d87-1f2a-1246-a4ae6b28b471`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiSeparatedSpace_iff_affine (X : Scheme) :
    QuasiSeparatedSpace X.carrier ↔ ∀ U V : X.affineOpens, IsCompact (U ∩ V : Set X.carrier) := by
  rw [QuasiSeparatedSpace_iff]
  constructor
  · intro H U V; exact H U V U.1.2 U.2.isCompact V.1.2 V.2.isCompact
  · intro H
    suffices
      ∀ (U : Opens X.carrier) (_ : IsCompact U.1) (V : Opens X.carrier) (_ : IsCompact V.1),
        IsCompact (U ⊓ V).1
      by intro U V hU hU' hV hV'; exact this ⟨U, hU⟩ hU' ⟨V, hV⟩ hV'
    intro U hU V hV
    -- Porting note: it complains "unable to find motive", but telling Lean that motive is
    -- underscore is actually sufficient, weird
    apply compact_open_induction_on (P := _) V hV
    · simp
    · intro S _ V hV
      change IsCompact (U.1 ∩ (S.1 ∪ V.1))
      rw [Set.inter_union_distrib_left]
      apply hV.union
      clear hV
      apply compact_open_induction_on (P := _) U hU
      · simp
      · intro S _ W hW
        change IsCompact ((S.1 ∪ W.1) ∩ V.1)
        rw [Set.union_inter_distrib_right]
        apply hW.union
        apply H
#align algebraic_geometry.quasi_separated_space_iff_affine AlgebraicGeometry.quasiSeparatedSpace_iff_affine

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuasiSeparated/Variant502bf9172127a4689d2395d6152c91f12b134159ed04894b7f8c9475f3888a69.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64d2a0a40efa2d762aac283a9612445e6427169d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
