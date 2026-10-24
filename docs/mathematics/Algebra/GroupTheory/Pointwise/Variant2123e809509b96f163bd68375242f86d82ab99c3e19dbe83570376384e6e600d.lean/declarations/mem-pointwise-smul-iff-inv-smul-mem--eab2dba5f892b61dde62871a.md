# mem_pointwise_smul_iff_inv_smul_mem₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1de690b-d0ae-8ea0-090a-196905a60d7c",
  "kind": "lemma",
  "lexical_name": "mem_pointwise_smul_iff_inv_smul_mem₀",
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
  "slug": "mem-pointwise-smul-iff-inv-smul-mem--eab2dba5f892b61dde62871a",
  "source": {
    "blob": "5ee7fa2272fad0f62526a353ecd8238e97e55949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 37,
    "path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab2dba5f892b61dde62871a230c82b4ec13097f28a90ae347c73fbec6edda77",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1de690b-d0ae-8ea0-090a-196905a60d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_pointwise_smul_iff_inv_smul_mem₀ (ha : a ≠ 0) (S : Submonoid M) (x : M) :
    x ∈ a • S ↔ a⁻¹ • x ∈ S :=
  mem_smul_set_iff_inv_smul_mem₀ ha (S : Set M) x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pointwise/Variant2123e809509b96f163bd68375242f86d82ab99c3e19dbe83570376384e6e600d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ee7fa2272fad0f62526a353ecd8238e97e55949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
