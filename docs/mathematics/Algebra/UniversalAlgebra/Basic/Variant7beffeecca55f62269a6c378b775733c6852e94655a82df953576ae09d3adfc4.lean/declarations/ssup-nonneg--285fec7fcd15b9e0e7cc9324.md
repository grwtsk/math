# sSup_nonneg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43d9f0f9-d45a-2cb9-92aa-790c6a261b45",
  "kind": "lemma",
  "lexical_name": "sSup_nonneg'",
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
  "slug": "ssup-nonneg--285fec7fcd15b9e0e7cc9324",
  "source": {
    "blob": "6eb068253266f1590b48168d01873d3ea9e9275e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 274,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:285fec7fcd15b9e0e7cc9324ac68682c0b0d150877e67c5424d591f9668107fa",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43d9f0f9-d45a-2cb9-92aa-790c6a261b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sSup_nonneg' (hs : ∃ x ∈ s, 0 ≤ x) : 0 ≤ sSup s := by
  classical
  obtain ⟨x, hxs, hx⟩ := hs
  exact dite _ (fun h ↦ le_csSup_of_le h hxs hx) fun h ↦ (sSup_of_not_bddAbove h).ge

/-- As `⨆ i, f i = 0` when the real-valued function `f` is unbounded above,
it suffices to show that `f` takes a nonnegative value to show that `0 ≤ ⨆ i, f i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7beffeecca55f62269a6c378b775733c6852e94655a82df953576ae09d3adfc4.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb068253266f1590b48168d01873d3ea9e9275e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
