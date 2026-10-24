# _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpSeries.Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.IsSelfAdjoint.exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42483327-8b95-f681-e6d1-b26c46f27f16",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpSeries.Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.IsSelfAdjoint.exp",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-expseries-variant8c7eefe70cc76e7--0b7709cba396fdcf88e15263",
  "source": {
    "blob": "65f7c16954d7fea763fb38e78bce65ccf371540d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 174,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b7709cba396fdcf88e152631887d71796e62bda8e40265c2fc75537afae82dc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42483327-8b95-f681-e6d1-b26c46f27f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.AsymptoticAnalysis.ExpSeries.Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.IsSelfAdjoint.exp [T2Space 𝔸] [StarRing 𝔸] [ContinuousStar 𝔸] {x : 𝔸}
    (h : IsSelfAdjoint x) : IsSelfAdjoint (exp 𝕂 x) :=
  (star_exp x).trans <| h.symm ▸ rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7c16954d7fea763fb38e78bce65ccf371540d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
