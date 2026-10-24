# tsum_le_tsum_of_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cabdc8ba-5f3d-d2a6-5b67-7115f0b2d5f1",
  "kind": "theorem",
  "lexical_name": "tsum_le_tsum_of_inj",
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
  "slug": "tsum-le-tsum-of-inj--10b60776136d1b4f471b438b",
  "source": {
    "blob": "cf5ecc69337b7371a2bd6664036bfd3de66b02cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10b60776136d1b4f471b438bcfdebe8daf06aa373c141015068866365bc233c2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cabdc8ba-5f3d-d2a6-5b67-7115f0b2d5f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_le_tsum_of_inj {g : κ → α} (e : ι → κ) (he : Injective e)
    (hs : ∀ c, c ∉ Set.range e → 0 ≤ g c) (h : ∀ i, f i ≤ g (e i)) (hf : Summable f)
    (hg : Summable g) : tsum f ≤ tsum g :=
  hasSum_le_inj _ he hs h hf.hasSum hg.hasSum
#align tsum_le_tsum_of_inj tsum_le_tsum_of_inj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variant63aeb20fe4f333d936d4d994dd0d919e639b07111089ef2660fe7854b15f9aef.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf5ecc69337b7371a2bd6664036bfd3de66b02cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
