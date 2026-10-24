# quasispectrum_eq_spectrum_toLp_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b5f6b97-b3b4-6efd-003d-64582ba944f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72dec1db-bd03-1813-134a-36a5a2fe767a",
  "kind": "lemma",
  "lexical_name": "quasispectrum_eq_spectrum_toLp_inr",
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
  "slug": "quasispectrum-eq-spectrum-tolp-inr--93919ee53f1db4a06eeacef9",
  "source": {
    "blob": "8fc9d56eaa04eb16e57bce8f561607390dfddca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 438,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93919ee53f1db4a06eeacef9d2e3c981dd45931c9040b978c99daca2cc7cc97a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72dec1db-bd03-1813-134a-36a5a2fe767a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma quasispectrum_eq_spectrum_toLp_inr (a : A) :
    quasispectrum 𝕜 a = spectrum 𝕜 (toLp 1 (a : Unitization 𝕜 A)) := by
  simpa [Unitization.quasispectrum_eq_spectrum_inr 𝕜, unitizationAlgEquiv] using
    AlgEquiv.spectrum_eq (WithLp.unitizationAlgEquiv 𝕜).symm (a : Unitization 𝕜 A) |>.symm

variable [CompleteSpace 𝕜] [CompleteSpace A]

namespace quasispectrum

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant99525c2ce12aae495f0ce09e9e55cb5056c3f7e426dd9f650c524f113886f333.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fc9d56eaa04eb16e57bce8f561607390dfddca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
