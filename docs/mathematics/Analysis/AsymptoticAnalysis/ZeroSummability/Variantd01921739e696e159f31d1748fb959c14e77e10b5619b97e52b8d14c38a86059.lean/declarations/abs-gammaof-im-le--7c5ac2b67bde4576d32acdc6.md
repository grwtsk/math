# abs_gammaOf_im_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17ac0f2b-4d51-c355-0fb8-0b384f34ab43",
  "kind": "lemma",
  "lexical_name": "abs_gammaOf_im_le",
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
  "slug": "abs-gammaof-im-le--7c5ac2b67bde4576d32acdc6",
  "source": {
    "blob": "006f77e53f09a847f031856b466ba626d36bc949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 42,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c5ac2b67bde4576d32acdc60d12f2659b3cb1877931277ca28a7107be1645c9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ac0f2b-4d51-c355-0fb8-0b384f34ab43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_gammaOf_im_le {ρ : ℂ} (h : 0 ≤ ρ.re ∧ ρ.re ≤ 1) : |(gammaOf ρ).im| ≤ 1 / 2 := by
  rw [gammaOf_im, abs_le]; constructor <;> linarith [h.1, h.2]

/-! ### The weight series Σ_{n∈ℤ} log(|n|+3)/(1+n²) -/

/-- log(|n| + 3)/(1 + n²) ≤ 4 |n|^{−3/2} for n ≠ 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroSummability/Variantd01921739e696e159f31d1748fb959c14e77e10b5619b97e52b8d14c38a86059.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006f77e53f09a847f031856b466ba626d36bc949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
