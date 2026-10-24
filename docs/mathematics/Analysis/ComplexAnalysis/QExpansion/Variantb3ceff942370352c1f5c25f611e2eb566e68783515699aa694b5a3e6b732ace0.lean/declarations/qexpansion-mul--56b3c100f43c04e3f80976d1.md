# qExpansion_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6cb2ced4d34b3c02f4854afe1969bd5b3ced8ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 621,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3ceff942370352c1f5c25f611e2eb566e68783515699aa694b5a3e6b732ace0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b2c8dc9-1d74-7114-154b-af8661a23269",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5030d89d-8797-20c5-2780-4f41deb2188d",
  "kind": "lemma",
  "lexical_name": "qExpansion_mul",
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
  "slug": "qexpansion-mul--56b3c100f43c04e3f80976d1",
  "source": {
    "blob": "6cb2ced4d34b3c02f4854afe1969bd5b3ced8ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 625,
    "line": 621,
    "path": "GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantb3ceff942370352c1f5c25f611e2eb566e68783515699aa694b5a3e6b732ace0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b3c100f43c04e3f80976d16335a6ac1f5828d837a7f9e8e0e0468e8eb712c0",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/QExpansion/Variantb3ceff942370352c1f5c25f611e2eb566e68783515699aa694b5a3e6b732ace0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5030d89d-8797-20c5-2780-4f41deb2188d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–625.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma qExpansion_mul [Γ.HasDetPlusMinusOne] (hh : 0 < h)
    (hΓ : h ∈ Γ.strictPeriods) {a b : ℤ} (f : ModularForm Γ a) (g : ModularForm Γ b) :
    qExpansion h (f.mul g) = qExpansion h f * qExpansion h g :=
  ModularForm.qExpansion_mul_coe hh hΓ f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/QExpansion/Variantb3ceff942370352c1f5c25f611e2eb566e68783515699aa694b5a3e6b732ace0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantb3ceff942370352c1f5c25f611e2eb566e68783515699aa694b5a3e6b732ace0.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb2ced4d34b3c02f4854afe1969bd5b3ced8ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
