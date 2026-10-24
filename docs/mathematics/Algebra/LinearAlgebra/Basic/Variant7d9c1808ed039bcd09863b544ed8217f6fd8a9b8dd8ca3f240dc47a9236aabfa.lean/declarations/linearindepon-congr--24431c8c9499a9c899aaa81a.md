# linearIndepOn_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79f1d28b-c879-50f1-14ea-f7a353a93a47",
  "kind": "theorem",
  "lexical_name": "linearIndepOn_congr",
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
  "slug": "linearindepon-congr--24431c8c9499a9c899aaa81a",
  "source": {
    "blob": "6679ffafc7b51d3c1bdf7bde21ca23caae77f32f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7d9c1808ed039bcd09863b544ed8217f6fd8a9b8dd8ca3f240dc47a9236aabfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24431c8c9499a9c899aaa81aca75a4a11af45f3033df2439c3abdc043d9ec69c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7d9c1808ed039bcd09863b544ed8217f6fd8a9b8dd8ca3f240dc47a9236aabfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79f1d28b-c879-50f1-14ea-f7a353a93a47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndepOn_congr {w : ι → M} (h : EqOn v w s) :
    LinearIndepOn R v s ↔ LinearIndepOn R w s := by
  rw [LinearIndepOn, LinearIndepOn]
  convert! Iff.rfl using 2
  ext x
  exact h.symm x.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7d9c1808ed039bcd09863b544ed8217f6fd8a9b8dd8ca3f240dc47a9236aabfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7d9c1808ed039bcd09863b544ed8217f6fd8a9b8dd8ca3f240dc47a9236aabfa.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6679ffafc7b51d3c1bdf7bde21ca23caae77f32f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
