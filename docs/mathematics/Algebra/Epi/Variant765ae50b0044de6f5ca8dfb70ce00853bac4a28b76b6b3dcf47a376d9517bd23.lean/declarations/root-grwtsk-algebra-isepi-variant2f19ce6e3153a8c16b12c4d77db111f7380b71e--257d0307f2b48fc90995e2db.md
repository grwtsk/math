# _root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'_apply_tmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f20cf5-34ed-a6ec-738c-1d363ff45650",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'_apply_tmul",
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
  "slug": "root-grwtsk-algebra-isepi-variant2f19ce6e3153a8c16b12c4d77db111f7380b71e--257d0307f2b48fc90995e2db",
  "source": {
    "blob": "1176fe4accf50eee8a5e1f0a6afd72252001fb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 166,
    "path": "GRWTSK/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257d0307f2b48fc90995e2db021d26de37b12859c555cdff037847bc465ef31b",
  "verification": {
    "reference": "docs/verification/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f20cf5-34ed-a6ec-738c-1d363ff45650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.GRWTSK.Algebra.IsEpi.Variant2f19ce6e3153a8c16b12c4d77db111f7380b71eef5039e8177bd934c2dbdf44d.TensorProduct.lid'_apply_tmul (a : A) (m : M) :
    TensorProduct.lid' R A M (a ⊗ₜ m) = a • m :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Epi/Variant765ae50b0044de6f5ca8dfb70ce00853bac4a28b76b6b3dcf47a376d9517bd23.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1176fe4accf50eee8a5e1f0a6afd72252001fb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
