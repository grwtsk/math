# exp_add_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15116ff8-017d-3814-16c2-a9698e470918",
  "kind": "theorem",
  "lexical_name": "exp_add_of_commute",
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
  "slug": "exp-add-of-commute--0200b8be6e6b6df0b399329e",
  "source": {
    "blob": "65f7c16954d7fea763fb38e78bce65ccf371540d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 456,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0200b8be6e6b6df0b399329edf01e9573a1f978f86113a2430a99782d5b216b8",
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

Occurrence: `result:15116ff8-017d-3814-16c2-a9698e470918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exp_add_of_commute {x y : 𝔸} (hxy : Commute x y) : exp 𝕂 (x + y) = exp 𝕂 x * exp 𝕂 y :=
  exp_add_of_commute_of_mem_ball hxy ((expSeries_radius_eq_top 𝕂 𝔸).symm ▸ edist_lt_top _ _)
    ((expSeries_radius_eq_top 𝕂 𝔸).symm ▸ edist_lt_top _ _)

section

variable (𝕂)

/-- `NormedSpace.exp 𝕂 x` has explicit two-sided inverse `NormedSpace.exp 𝕂 (-x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f7c16954d7fea763fb38e78bce65ccf371540d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
