# mkLabel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f5dc3e46e203f96c9f1502872df911550bfdb225807e4cd797640946e2d8e68",
  "kind": "def",
  "lexical_name": "mkLabel",
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
  "slug": "mklabel--e9d413f65b9c79f641dab6d1",
  "source": {
    "blob": "726e3485de66c59a5843c06dbdfa8814c030b2a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9d413f65b9c79f641dab6d1a131a54ebf26bdf7c7fda4d169d2aad23745d611",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f5dc3e46e203f96c9f1502872df911550bfdb225807e4cd797640946e2d8e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLabel (e : MVarId)
    (stroke := "var(--vscode-editor-foreground)")
    (fill := "var(--vscode-editor-background)") :
    MetaM (Nat × Nat × Html) := do
  let fmt := s!"?{← e.getName}"
  let fmtTp ← withOptions (·.set `pp.deepTerms.threshold (2 : Nat))
    (toString <$> ppExpr (← e.getType'))
  let len := fmt.length + fmtTp.length + 3
  let w := min (15 + len * 6) 100
  let h := max 20 (20 * (1 + len / 15))
  let x : Int := -w/2
  let y : Int := -h/2
  return (w, h, <g>
      <rect
        fill={fill}
        stroke={stroke}
        strokeWidth={.num 1.5}
        width={w} height={h} x={x} y={y}
        rx={5}
      />
      <foreignObject width={w} height={h} x={.num (x + 5 : Int)} y={y}>
        <span className="font-code">{.text fmt} : {.text fmtTp}</span>
      </foreignObject>
    </g>
  )

open ProofWidgets Jsx in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MVarGraph/Variant89969ba14701096a46add12d820f781f62dfd9e525747b635d537369465e56dc.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726e3485de66c59a5843c06dbdfa8814c030b2a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
