# map₂_sup_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c9e17fe-5743-468a-c12a-e2bfc3a8c6cf",
  "kind": "theorem",
  "lexical_name": "map₂_sup_left",
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
  "slug": "map-sup-left--a56dd28d2dd7e751eb5fa22e",
  "source": {
    "blob": "be8f8ccd316f36d06e7f650cfcde99f5e7fa500d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a56dd28d2dd7e751eb5fa22e243258b64ffd236698d9965a14c2d05bbcdc2ba0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c9e17fe-5743-468a-c12a-e2bfc3a8c6cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_sup_left : map₂ m (f₁ ⊔ f₂) g = map₂ m f₁ g ⊔ map₂ m f₂ g := by
  simp_rw [← map_prod_eq_map₂, sup_prod, map_sup]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8f8ccd316f36d06e7f650cfcde99f5e7fa500d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
