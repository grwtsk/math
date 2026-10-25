# IsCycleOn.zpow_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "723d6f7b59f32dd9ec0da0d7210417369b84f892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 755,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb5093eb-20f9-52a3-8374-e8882e7ec429",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6193b88f-66a4-706a-a1b6-10be71ade834",
  "kind": "theorem",
  "lexical_name": "IsCycleOn.zpow_apply_eq",
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
  "slug": "iscycleon-zpow-apply-eq--2bd911ec4f24b3d2a097a3e7",
  "source": {
    "blob": "723d6f7b59f32dd9ec0da0d7210417369b84f892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 761,
    "line": 755,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bd911ec4f24b3d2a097a3e74d0dd16c09de394194dd66a9f6659887d78b89bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6193b88f-66a4-706a-a1b6-10be71ade834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 755–761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCycleOn.zpow_apply_eq {s : Finset α} (hf : f.IsCycleOn s) (ha : a ∈ s) :
    ∀ {n : ℤ}, (f ^ n) a = a ↔ (#s : ℤ) ∣ n
  | Int.ofNat _ => (hf.pow_apply_eq ha).trans Int.natCast_dvd_natCast.symm
  | Int.negSucc n => by
    rw [zpow_negSucc, ← inv_pow]
    exact (hf.inv.pow_apply_eq ha).trans (dvd_neg.trans Int.natCast_dvd_natCast).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean#L755).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `723d6f7b59f32dd9ec0da0d7210417369b84f892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
