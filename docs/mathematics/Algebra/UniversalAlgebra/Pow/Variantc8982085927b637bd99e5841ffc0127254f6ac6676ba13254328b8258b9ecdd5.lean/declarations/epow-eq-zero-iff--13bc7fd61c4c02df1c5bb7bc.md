# epow_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfc2b49e-d73a-7049-860b-665a3feb39cc",
  "kind": "lemma",
  "lexical_name": "epow_eq_zero_iff",
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
  "slug": "epow-eq-zero-iff--13bc7fd61c4c02df1c5bb7bc",
  "source": {
    "blob": "cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 118,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13bc7fd61c4c02df1c5bb7bc6efd4ae66fddd6f84b79f8f689ece55d464b5b2f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfc2b49e-d73a-7049-860b-665a3feb39cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epow_eq_zero_iff : x ^ y = 0 ↔ x = 0 ∧ y ≠ 0 := by
  refine ⟨fun h ↦ ⟨?_, fun y_0 ↦ ?_⟩, fun h ↦ h.1.symm ▸ zero_epow h.2⟩
  · contrapose! h
    exact (epow_pos h).ne'
  · rw [y_0, epow_zero] at h; contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
