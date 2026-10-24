# paperFT_fk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bba3dd4f-782b-afa7-9971-302014f28170",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d431bcb-b679-dbed-f0a5-d62afc929de7",
  "kind": "lemma",
  "lexical_name": "paperFT_fk",
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
  "slug": "paperft-fk--4515397865daf7b4d8fbac47",
  "source": {
    "blob": "1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4515397865daf7b4d8fbac4726d80869c8218e5130677228f98acf460c7333b3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d431bcb-b679-dbed-f0a5-d62afc929de7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma paperFT_fk (k : ℤ) (z : ℂ) : paperFT (P.fk T k) z = P.phiHat T (z - P.tau T k) := by
  unfold paperFT Params.phiHat Params.fk paperFT
  congr 1
  ext u
  rw [mul_assoc, ← Complex.exp_add]
  congr 2
  ring

/-- "since φ̂ is real on ℝ we have conj φ̂(conj z) = φ̂(z)", in the form φ̂(conj z) = conj φ̂(z);
uses only that φ is real-valued and even. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
