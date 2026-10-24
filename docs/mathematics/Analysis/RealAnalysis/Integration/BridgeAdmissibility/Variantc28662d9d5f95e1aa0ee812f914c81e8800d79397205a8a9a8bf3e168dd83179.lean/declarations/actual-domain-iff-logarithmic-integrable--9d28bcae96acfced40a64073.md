# actual_domain_iff_logarithmic_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abe40d35990dcb486d170a07ec85d7cd384ddb37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c28662d9d5f95e1aa0ee812f914c81e8800d79397205a8a9a8bf3e168dd83179.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:592205e8-5fe9-1ff4-0329-a59f53d2c393",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee83a8de-ca8f-3823-04c3-d741409a3f5f",
  "kind": "theorem",
  "lexical_name": "actual_domain_iff_logarithmic_integrable",
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
  "slug": "actual-domain-iff-logarithmic-integrable--9d28bcae96acfced40a64073",
  "source": {
    "blob": "abe40d35990dcb486d170a07ec85d7cd384ddb37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantc28662d9d5f95e1aa0ee812f914c81e8800d79397205a8a9a8bf3e168dd83179.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d28bcae96acfced40a64073e97ee2753449eccd15fd61f5b96f327b0b3fd4ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantc28662d9d5f95e1aa0ee812f914c81e8800d79397205a8a9a8bf3e168dd83179.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee83a8de-ca8f-3823-04c3-d741409a3f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_domain_iff_logarithmic_integrable (A : ℝ) (hA : 1 ≤ A) :
    LogarithmicDomain A (normalizedTest explicitSecondDerivative A) ↔
      Integrable (logarithmicIntegrand (normalizedTest explicitSecondDerivative A)) volume := by
  exact ⟨fun h ↦ h.2.2, fun h ↦ ⟨actual_memLp A hA, actual_support A hA, h⟩⟩

/-- Genuine logarithmic integrability for the actual family, with no analytic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantc28662d9d5f95e1aa0ee812f914c81e8800d79397205a8a9a8bf3e168dd83179.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Variantc28662d9d5f95e1aa0ee812f914c81e8800d79397205a8a9a8bf3e168dd83179.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abe40d35990dcb486d170a07ec85d7cd384ddb37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
