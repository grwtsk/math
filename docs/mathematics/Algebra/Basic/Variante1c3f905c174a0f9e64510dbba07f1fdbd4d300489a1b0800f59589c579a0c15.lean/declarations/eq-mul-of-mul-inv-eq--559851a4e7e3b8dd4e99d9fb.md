# eq_mul_of_mul_inv_eq₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42f55596-e9a5-2ce8-5b86-c69386022d0e",
  "kind": "lemma",
  "lexical_name": "eq_mul_of_mul_inv_eq₀",
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
  "slug": "eq-mul-of-mul-inv-eq--559851a4e7e3b8dd4e99d9fb",
  "source": {
    "blob": "8a28e9153e24169504b6c11588408ad39d10d44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 342,
    "path": "GRWTSK/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559851a4e7e3b8dd4e99d9fbaf1128e9ac4a3585741ece7a1c88d9ef436df5e1",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42f55596-e9a5-2ce8-5b86-c69386022d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_mul_of_mul_inv_eq₀ (hb : b ≠ 0) (h : a * c⁻¹ = b) : a = b * c :=
  (mul_eq_of_eq_mul_inv₀ hb h.symm).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante1c3f905c174a0f9e64510dbba07f1fdbd4d300489a1b0800f59589c579a0c15.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a28e9153e24169504b6c11588408ad39d10d44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
