# natAbs_valMinAbs_eq_natAbs_valMinAbs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a409edc-584d-4fea-3471-1cd2aaecff4a",
  "kind": "theorem",
  "lexical_name": "natAbs_valMinAbs_eq_natAbs_valMinAbs",
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
  "slug": "natabs-valminabs-eq-natabs-valminabs--8275fc0e2fd0a33b5790adf8",
  "source": {
    "blob": "5c952edfa6dfceb27dc25beb363cde67b17ec328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 146,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8275fc0e2fd0a33b5790adf865a0d27c6a7f87555e286fe3dfbee0f5849ea92a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a409edc-584d-4fea-3471-1cd2aaecff4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_valMinAbs_eq_natAbs_valMinAbs :
    a.valMinAbs.natAbs = b.valMinAbs.natAbs ↔ a = b ∨ a = -b := by
  constructor
  · rw [Int.natAbs_eq_natAbs_iff, valMinAbs_inj]
    exact Or.imp_right eq_neg_of_valMinAbs_eq_neg_valMinAbs
  · rintro (rfl | rfl)
    · rfl
    · rw [natAbs_valMinAbs_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c952edfa6dfceb27dc25beb363cde67b17ec328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
