# smul_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a5c704fe-1284-2f84-cf03-a8350486acf9",
  "kind": "lemma",
  "lexical_name": "smul_neg",
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
  "slug": "smul-neg--e5c6e8b71faa0f1c94e2dbdd",
  "source": {
    "blob": "f5d16bb992b6c8d08235f2b5866da70a356c2170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5c6e8b71faa0f1c94e2dbdd3d4e4bb60761987d88262c23482531952bc067d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5c704fe-1284-2f84-cf03-a8350486acf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma smul_neg (f : Lp 𝕜 p μ) (g : Lp E q μ) :
    f • -g = -(f • g) := by
  simp [eq_neg_iff_add_eq_zero, ← Lp.add_smul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d16bb992b6c8d08235f2b5866da70a356c2170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
