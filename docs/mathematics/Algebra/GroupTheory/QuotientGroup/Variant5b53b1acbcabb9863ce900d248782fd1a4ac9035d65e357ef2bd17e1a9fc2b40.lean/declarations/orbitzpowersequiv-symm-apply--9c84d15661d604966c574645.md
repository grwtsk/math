# orbitZPowersEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c92f7d7f91480e66f932305f77733c8bd135c3e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2322ec9-98ab-36cc-6a17-50c3934eccbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f22b9fbc-32b6-daeb-146e-01ca72fa6940",
  "kind": "theorem",
  "lexical_name": "orbitZPowersEquiv_symm_apply",
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
  "slug": "orbitzpowersequiv-symm-apply--9c84d15661d604966c574645",
  "source": {
    "blob": "c92f7d7f91480e66f932305f77733c8bd135c3e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 110,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c84d15661d604966c574645a9cef07333e3effdcffd9e0f2910ed11fc71d819",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f22b9fbc-32b6-daeb-146e-01ca72fa6940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbitZPowersEquiv_symm_apply (k : ZMod (minimalPeriod (a • ·) b)) :
    (orbitZPowersEquiv a b).symm k =
      (⟨a, mem_zpowers a⟩ : zpowers a) ^ (cast k : ℤ) • ⟨b, mem_orbit_self b⟩ :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant5b53b1acbcabb9863ce900d248782fd1a4ac9035d65e357ef2bd17e1a9fc2b40.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c92f7d7f91480e66f932305f77733c8bd135c3e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
