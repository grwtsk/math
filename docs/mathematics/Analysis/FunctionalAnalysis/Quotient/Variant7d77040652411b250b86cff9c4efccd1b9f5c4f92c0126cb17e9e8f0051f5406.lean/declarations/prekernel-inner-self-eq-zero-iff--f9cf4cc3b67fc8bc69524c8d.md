# preKernel_inner_self_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "130db06e86fd1e559242a0bff058d3af0fa189bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58af6f6e-df02-0b5b-dd69-a363dc9b184e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7c1ae51-bf9e-57e3-8a92-1d8f77438b86",
  "kind": "theorem",
  "lexical_name": "preKernel_inner_self_eq_zero_iff",
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
  "slug": "prekernel-inner-self-eq-zero-iff--f9cf4cc3b67fc8bc69524c8d",
  "source": {
    "blob": "130db06e86fd1e559242a0bff058d3af0fa189bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 138,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9cf4cc3b67fc8bc69524c8daede8364ae9deaa762616b45da01b2514399044c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7c1ae51-bf9e-57e3-8a92-1d8f77438b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preKernel_inner_self_eq_zero_iff
    (f : PreKernelSpace kernel) :
  preKernelInner kernel f f = 0 ↔ f = 0 := by
  change inner ℂ f f = 0 ↔ f = 0
  exact inner_self_eq_zero (𝕜 := ℂ) (x := f)

/-- A raw vector becomes zero in the quotient exactly when it belongs to the
kernel radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variant7d77040652411b250b86cff9c4efccd1b9f5c4f92c0126cb17e9e8f0051f5406.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130db06e86fd1e559242a0bff058d3af0fa189bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
