# not_isPrime_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99db0bdb-a33f-b2d0-5933-0dd8c6a0fe3e",
  "kind": "theorem",
  "lexical_name": "not_isPrime_iff",
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
  "slug": "not-isprime-iff--f528c79a48892a79dd2cbdda",
  "source": {
    "blob": "f52c6ddd4b092deb960d593dc3e54b9ce9fe4571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f528c79a48892a79dd2cbdda0eb4dea847c8321cf84a4016617d3c400e8ad99f",
  "verification": {
    "reference": "docs/verification/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99db0bdb-a33f-b2d0-5933-0dd8c6a0fe3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_isPrime_iff {I : Ideal α} :
    ¬I.IsPrime ↔ I = ⊤ ∨ ∃ (x : α) (_hx : x ∉ I) (y : α) (_hy : y ∉ I), x * y ∈ I := by
  simp_rw [Ideal.isPrime_iff, not_and_or, Ne, Classical.not_not, not_forall, not_or]
  exact
    or_congr Iff.rfl
      ⟨fun ⟨x, y, hxy, hx, hy⟩ => ⟨x, hx, y, hy, hxy⟩, fun ⟨x, hx, y, hy, hxy⟩ =>
        ⟨x, y, hxy, hx, hy⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Prime/Variant396f13af44d04049b689d723ed74e76c93a68c8678eb8651ae5b9824de695705.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52c6ddd4b092deb960d593dc3e54b9ce9fe4571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
