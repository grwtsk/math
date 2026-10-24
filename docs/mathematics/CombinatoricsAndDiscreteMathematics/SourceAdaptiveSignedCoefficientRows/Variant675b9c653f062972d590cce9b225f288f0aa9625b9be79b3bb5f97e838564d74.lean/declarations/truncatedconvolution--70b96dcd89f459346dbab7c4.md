# truncatedConvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62648f2c183973ec63f436da6603fe07694c703a50240e4d99153993b4aea67f",
  "kind": "def",
  "lexical_name": "truncatedConvolution",
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
  "slug": "truncatedconvolution--70b96dcd89f459346dbab7c4",
  "source": {
    "blob": "e41e5b071f23a939216d4b1a57925799215bff38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70b96dcd89f459346dbab7c44005a7740853c0e3585b441b14da96b8775977fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62648f2c183973ec63f436da6603fe07694c703a50240e4d99153993b4aea67f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def truncatedConvolution (U V n : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 U, ∑ m ∈ Finset.Icc 1 V,
    if d * m = n then (moebius d : ℝ) * vonMangoldt m else 0

/-- The rectangle reindexes faithfully into the SAME closed original cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41e5b071f23a939216d4b1a57925799215bff38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
