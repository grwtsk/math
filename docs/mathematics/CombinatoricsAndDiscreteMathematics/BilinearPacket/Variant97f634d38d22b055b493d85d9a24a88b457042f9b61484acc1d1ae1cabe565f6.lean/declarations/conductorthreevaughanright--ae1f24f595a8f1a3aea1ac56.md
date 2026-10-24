# conductorThreeVaughanRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddf01b3ab3466f75b299fbd257f37c0e5a7a9637d2ed2371c3cb240181f7f3ec",
  "kind": "def",
  "lexical_name": "conductorThreeVaughanRight",
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
  "slug": "conductorthreevaughanright--ae1f24f595a8f1a3aea1ac56",
  "source": {
    "blob": "06b0240a775db3c16b8c94760261255c675f4f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant97f634d38d22b055b493d85d9a24a88b457042f9b61484acc1d1ae1cabe565f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae1f24f595a8f1a3aea1ac56958ee002d8a295b5e87c76da2b374e5296f825c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant97f634d38d22b055b493d85d9a24a88b457042f9b61484acc1d1ae1cabe565f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddf01b3ab3466f75b299fbd257f37c0e5a7a9637d2ed2371c3cb240181f7f3ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductorThreeVaughanRight (N : ℕ) (k : VaughanScaleIndex N) : ℂ :=
  if vaughanFourthRootCutoff N < k.1 then
    (((conductorThreeIntegerValue k.1 : ℝ) *
      vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k.1 : ℝ) : ℂ)
  else 0

/-! ## Exact matrix algebra -/

/-- The finite hyperbola cutoff matrix.  It contains only the prefix
condition `leftIndex * rightIndex <= x`; coefficient support is carried by
the two Vaughan vectors. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant97f634d38d22b055b493d85d9a24a88b457042f9b61484acc1d1ae1cabe565f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BilinearPacket/Variant97f634d38d22b055b493d85d9a24a88b457042f9b61484acc1d1ae1cabe565f6.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06b0240a775db3c16b8c94760261255c675f4f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
