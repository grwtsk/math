# actualFullOffcriticalContribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47aa4deadd16fb4b5df29e2a23ba2ad254205a6a1b7256dab9f709eaf15e262d",
  "kind": "def",
  "lexical_name": "actualFullOffcriticalContribution",
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
  "slug": "actualfulloffcriticalcontribution--4d8cc010d2b125b4dbd79726",
  "source": {
    "blob": "7aaa8ea652c1f5781d8b359a60b5faf5f3a64307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 26,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variantd6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d8cc010d2b125b4dbd79726f037f9c753e7d582d9f59aee3fc9f7f9b2cb0bad",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variantd6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47aa4deadd16fb4b5df29e2a23ba2ad254205a6a1b7256dab9f709eaf15e262d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualFullOffcriticalContribution (A : ℝ) : ℂ :=
  ∑' ρ : (zetaZeros zetaSeam).carrier,
    if (ρ : ℂ).re ≠ 1 / 2 then
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variantd6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceActualFullCriticalPartition/Variantd6276a12fe64bde1a6bb9f64ac73dc1d2c48a6a4208d1e4b3a18c16e811b0257.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aaa8ea652c1f5781d8b359a60b5faf5f3a64307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
