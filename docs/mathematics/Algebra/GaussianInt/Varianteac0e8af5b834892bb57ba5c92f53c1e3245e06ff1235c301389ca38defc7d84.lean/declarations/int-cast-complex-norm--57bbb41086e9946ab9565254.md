# int_cast_complex_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f582dbdc350d3ed49d61877fcdbae48205ae06b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e675bc8b-3fbc-6fb1-b26e-0f98ff20f1f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e606944-34a7-5d0d-53c1-058035c22447",
  "kind": "theorem",
  "lexical_name": "int_cast_complex_norm",
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
  "slug": "int-cast-complex-norm--57bbb41086e9946ab9565254",
  "source": {
    "blob": "f582dbdc350d3ed49d61877fcdbae48205ae06b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 156,
    "path": "GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bbb41086e9946ab9565254407ea7b2373a09c66d06924c88d3628a83f35653",
  "verification": {
    "reference": "docs/verification/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e606944-34a7-5d0d-53c1-058035c22447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_cast_complex_norm (x : ℤ[i]) : (x.norm : ℂ) = Complex.normSq (x : ℂ) := by
  cases x; rw [Zsqrtd.norm, normSq]; simp
#align gaussian_int.nat_cast_complex_norm GaussianInt.int_cast_complex_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussianInt/Varianteac0e8af5b834892bb57ba5c92f53c1e3245e06ff1235c301389ca38defc7d84.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f582dbdc350d3ed49d61877fcdbae48205ae06b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
