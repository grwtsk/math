# full_sesquilinear_hermitian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a1edfa74e59acbb63af5e65023726b7fee1288a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f7e9689-2378-6b92-9b20-e310a85ff28d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d64c3e1e-480e-4cab-3c35-43b8fa204902",
  "kind": "theorem",
  "lexical_name": "full_sesquilinear_hermitian",
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
  "slug": "full-sesquilinear-hermitian--694b2adf1caf894dc2afe7cf",
  "source": {
    "blob": "3a1edfa74e59acbb63af5e65023726b7fee1288a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:694b2adf1caf894dc2afe7cf536ccaa5ed44618a6c26cf68b58c6f51a53ff01e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64c3e1e-480e-4cab-3c35-43b8fa204902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_sesquilinear_hermitian (A : ℝ) (f g : Hilbert) :
    conj (fullSesquilinearForm A f g) = fullSesquilinearForm A g f := by
  rw [fullSesquilinearForm, ← integral_conj, fullSesquilinearForm]
  apply integral_congr_ae
  filter_upwards [] with ξ
  simp only [map_mul, Complex.conj_ofReal, Complex.conj_conj]
  ring

/-- The real quadratic form is exactly the diagonal of the full sesquilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticOperator/Variant76edfc1b16b9e746dbf1b03c3ef09c66a35322c705ec24234484f915be0375dc.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a1edfa74e59acbb63af5e65023726b7fee1288a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
