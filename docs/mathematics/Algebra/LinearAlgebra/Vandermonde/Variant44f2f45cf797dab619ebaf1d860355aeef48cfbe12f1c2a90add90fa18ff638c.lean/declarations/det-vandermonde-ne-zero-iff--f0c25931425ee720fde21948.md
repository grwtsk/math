# det_vandermonde_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49a4992177aa418867633cf21bfb9254435e4abb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:376f28c2-c850-fd88-5a85-877283a4c947",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:182893cd-b871-8462-3227-a5515e985eb7",
  "kind": "theorem",
  "lexical_name": "det_vandermonde_ne_zero_iff",
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
  "slug": "det-vandermonde-ne-zero-iff--f0c25931425ee720fde21948",
  "source": {
    "blob": "49a4992177aa418867633cf21bfb9254435e4abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 151,
    "path": "GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0c25931425ee720fde219483c1762882ed27b984a0860c232fb2e914e1d9737",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182893cd-b871-8462-3227-a5515e985eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_vandermonde_ne_zero_iff [IsDomain R] {n : ℕ} {v : Fin n → R} :
    det (vandermonde v) ≠ 0 ↔ Function.Injective v := by
  unfold Function.Injective
  simp only [det_vandermonde_eq_zero_iff, Ne.def, not_exists, not_and, Classical.not_not]
#align matrix.det_vandermonde_ne_zero_iff Matrix.det_vandermonde_ne_zero_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant44f2f45cf797dab619ebaf1d860355aeef48cfbe12f1c2a90add90fa18ff638c.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a4992177aa418867633cf21bfb9254435e4abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
