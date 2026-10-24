# MeromorphicAt.meromorphicTrailingCoeffAt_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d168b32b-8c25-87ef-7e88-45c654c849da",
  "kind": "lemma",
  "lexical_name": "MeromorphicAt.meromorphicTrailingCoeffAt_mul",
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
  "slug": "meromorphicat-meromorphictrailingcoeffat-mul--7abe0ab04954573a97e5a170",
  "source": {
    "blob": "83ddc065af2aa54cff11436693db6cdad84a4928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 405,
    "path": "GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7abe0ab04954573a97e5a17031d59be0c21cd8eb451e45286a4e738010980ead",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d168b32b-8c25-87ef-7e88-45c654c849da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeromorphicAt.meromorphicTrailingCoeffAt_mul {f₁ f₂ : 𝕜 → 𝕜} (hf₁ : MeromorphicAt f₁ x)
    (hf₂ : MeromorphicAt f₂ x) :
    meromorphicTrailingCoeffAt (f₁ * f₂) x =
      (meromorphicTrailingCoeffAt f₁ x) * (meromorphicTrailingCoeffAt f₂ x) :=
  meromorphicTrailingCoeffAt_smul hf₁ hf₂

/--
The trailing coefficient of a product is the product of the trailing coefficients.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/TrailingCoefficient/Varianta99cee407456df1fcdce11f01116a13a7da7a2538000ebaf7eca13f0b286989d.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ddc065af2aa54cff11436693db6cdad84a4928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
