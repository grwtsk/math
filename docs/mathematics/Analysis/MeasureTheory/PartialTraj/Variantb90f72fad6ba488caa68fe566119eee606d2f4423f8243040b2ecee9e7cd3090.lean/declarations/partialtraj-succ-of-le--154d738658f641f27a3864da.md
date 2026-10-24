# partialTraj_succ_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adaccec323a37a53efc9eb1ca032e26de851337b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa68cd1d-ff71-1fc3-7c37-4c9da33f0679",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:902ea172-47ab-4b4a-5f6d-209b3ab2e623",
  "kind": "lemma",
  "lexical_name": "partialTraj_succ_of_le",
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
  "slug": "partialtraj-succ-of-le--154d738658f641f27a3864da",
  "source": {
    "blob": "adaccec323a37a53efc9eb1ca032e26de851337b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 126,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154d738658f641f27a3864da969b45225bab272cd389be5e4db479a5b274006b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:902ea172-47ab-4b4a-5f6d-209b3ab2e623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partialTraj_succ_of_le (hab : a ≤ b) : partialTraj κ a (b + 1) =
    ((Kernel.id ×ₖ ((κ b).map (piSingleton b))) ∘ₖ partialTraj κ a b).map
    (IicProdIoc b (b + 1)) := by
  rw [partialTraj, dif_neg (by omega)]
  induction b, hab using Nat.le_induction with
  | base => simp
  | succ k hak hk => rw [Nat.leRec_succ, ← partialTraj_le_def]; omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variantb90f72fad6ba488caa68fe566119eee606d2f4423f8243040b2ecee9e7cd3090.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adaccec323a37a53efc9eb1ca032e26de851337b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
