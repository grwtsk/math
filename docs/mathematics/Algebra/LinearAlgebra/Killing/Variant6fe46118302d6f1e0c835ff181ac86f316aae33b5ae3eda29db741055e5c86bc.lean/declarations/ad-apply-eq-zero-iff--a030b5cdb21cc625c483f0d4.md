# ad_apply_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb244bf0-ce1a-1b88-9bd5-be4f1c1b8160",
  "kind": "lemma",
  "lexical_name": "ad_apply_eq_zero_iff",
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
  "slug": "ad-apply-eq-zero-iff--a030b5cdb21cc625c483f0d4",
  "source": {
    "blob": "15f8a283d51bb7060fc03691cf3430b9e5bbb5c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a030b5cdb21cc625c483f0d47597177ad275eada99a7ca390d4e57b90353ecc3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb244bf0-ce1a-1b88-9bd5-be4f1c1b8160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma ad_apply_eq_zero_iff (x : L) : ad R L x = 0 ↔ x = 0 := by
  refine ⟨fun h ↦ ?_, fun h ↦ by simp [h]⟩
  rwa [← LieHom.mem_ker, ad_ker_eq_center, LieAlgebra.center_eq_bot, LieSubmodule.mem_bot] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variant6fe46118302d6f1e0c835ff181ac86f316aae33b5ae3eda29db741055e5c86bc.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15f8a283d51bb7060fc03691cf3430b9e5bbb5c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
