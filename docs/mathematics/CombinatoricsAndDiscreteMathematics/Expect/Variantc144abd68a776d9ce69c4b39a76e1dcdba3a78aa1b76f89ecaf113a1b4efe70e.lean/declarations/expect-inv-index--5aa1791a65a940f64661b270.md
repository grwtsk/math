# expect_inv_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c0a9137-990f-f062-6634-fbf638ff18b3",
  "kind": "lemma",
  "lexical_name": "expect_inv_index",
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
  "slug": "expect-inv-index--5aa1791a65a940f64661b270",
  "source": {
    "blob": "43b483189b452c445b957498d978c55b3cccf308",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aa1791a65a940f64661b27013bb59743d60b9af021aceee5cd54a2345da148a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c0a9137-990f-f062-6634-fbf638ff18b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma expect_inv_index [DecidableEq ι] [InvolutiveInv ι] (s : Finset ι) (f : ι → M) :
    𝔼 i ∈ s⁻¹, f i = 𝔼 i ∈ s, f i⁻¹ := expect_image inv_injective.injOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variantc144abd68a776d9ce69c4b39a76e1dcdba3a78aa1b76f89ecaf113a1b4efe70e.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b483189b452c445b957498d978c55b3cccf308` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
