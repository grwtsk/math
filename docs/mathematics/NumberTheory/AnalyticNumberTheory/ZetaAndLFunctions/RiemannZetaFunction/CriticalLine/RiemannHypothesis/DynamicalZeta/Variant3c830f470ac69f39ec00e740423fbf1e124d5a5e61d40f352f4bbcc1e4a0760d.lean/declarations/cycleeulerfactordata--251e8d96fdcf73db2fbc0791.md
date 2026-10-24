# cycleEulerFactorData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c17191d66481ad6606a820a65e6d0f1f06d649dcb1f2e6ff1a347fea90328b6d",
  "kind": "def",
  "lexical_name": "cycleEulerFactorData",
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
  "slug": "cycleeulerfactordata--251e8d96fdcf73db2fbc0791",
  "source": {
    "blob": "85687caca4db78f9c6be2a74bcdf48bee9e3f950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 487,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:251e8d96fdcf73db2fbc0791109d1b8e68540d057fdabd6faca0293aaec522c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c17191d66481ad6606a820a65e6d0f1f06d649dcb1f2e6ff1a347fea90328b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cycleEulerFactorData {n : Nat} (H : BitPerm n) : Nat →₀ Nat where
  support := (Finset.range (2 ^ n + 1)).filter fun r => cycleCount H r ≠ 0
  toFun := cycleCount H
  mem_support_toFun := by
    intro r
    simp only [Finset.mem_filter, Finset.mem_range]
    constructor
    · exact And.right
    · intro hrne
      refine ⟨?_, hrne⟩
      by_contra hrange
      have hr : 2 ^ n < r := by omega
      exact hrne (cycleCount_eq_zero_of_card_lt H hr)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant3c830f470ac69f39ec00e740423fbf1e124d5a5e61d40f352f4bbcc1e4a0760d.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85687caca4db78f9c6be2a74bcdf48bee9e3f950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
