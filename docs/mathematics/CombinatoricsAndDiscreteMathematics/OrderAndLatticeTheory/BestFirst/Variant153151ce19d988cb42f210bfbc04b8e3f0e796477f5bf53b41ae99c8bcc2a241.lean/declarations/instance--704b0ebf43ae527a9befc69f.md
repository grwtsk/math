# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcbb63bb9493d00477d36ed600c804974f83744016b232077d451d2b2a26b175",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--704b0ebf43ae527a9befc69f",
  "source": {
    "blob": "4ffcdd3560dab52ad97ddc5614e4a76755e56c5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:704b0ebf43ae527a9befc69f1f64c6a383b19621b7763cdaa3398d1ed8e4635c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcbb63bb9493d00477d36ed600c804974f83744016b232077d451d2b2a26b175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LinearOrder Point := LinearOrder.lift' _ emb_injective

run_cmd Elab.Command.liftTermElabM do
  let r :=
    (← bestFirstSearch nbhd (10, 10) (maxQueued := some 4) |>.takeUpToFirst (· = (0,0)) |>.force)
  if r ≠
    [(10, 10), (11, 10), (9, 10), (8, 10), (7, 10), (6, 10), (6, 11), (6, 9), (7, 9), (6, 8),
      (7, 8), (6, 7), (7, 7), (6, 6), (7, 6), (8, 6), (8, 7), (9, 6), (9, 7), (8, 8), (10, 6),
      (9, 8), (8, 9), (10, 7), (11, 6), (9, 9), (11, 7), (10, 8), (12, 6), (10, 9), (11, 8),
      (13, 6), (12, 7), (11, 9), (12, 8), (13, 7), (12, 9), (13, 8), (14, 7), (13, 9), (12, 10),
      (14, 8), (13, 10), (12, 11), (15, 7), (14, 6), (15, 6), (15, 8), (14, 9), (16, 6), (15, 9),
      (14, 10), (16, 8), (17, 6), (16, 7), (15, 10), (14, 11), (17, 7), (15, 11), (13, 11),
      (13, 12), (14, 12), (12, 12), (11, 12), (10, 12), (9, 12), (8, 12), (7, 12), (6, 12), (6, 13),
      (7, 13), (7, 11), (8, 11), (9, 11), (10, 11), (6, 14), (11, 11), (7, 14), (6, 15), (8, 14),
      (7, 15), (9, 14), (8, 15), (8, 13), (9, 13), (10, 13), (6, 16), (11, 13), (10, 14), (12, 13),
      (11, 14), (7, 16), (6, 17), (10, 15), (8, 16), (7, 17), (9, 16), (8, 17), (6, 18), (10, 16),
      (9, 17), (9, 15), (8, 18), (11, 16), (10, 17), (12, 16), (11, 17), (11, 15), (12, 15),
      (13, 15), (12, 14), (13, 14), (14, 14), (13, 13), (14, 13), (15, 13), (16, 13), (15, 14),
      (15, 12), (16, 12), (17, 12), (16, 11), (17, 11), (16, 10), (17, 10), (16, 9), (17, 9),
      (18, 9), (17, 8), (18, 8), (19, 8), (18, 7), (19, 7), (18, 6), (19, 6), (20, 6), (21, 6),
      (20, 7), (20, 5), (21, 5), (20, 4), (21, 4), (20, 3), (21, 3), (19, 3), (18, 3), (17, 3),
      (16, 3), (15, 3), (14, 3), (13, 3), (12, 3), (11, 3), (10, 3), (9, 3), (8, 3), (7, 3),
      (6, 3), (5, 3), (4, 3), (3, 3), (2, 3), (1, 3), (0, 3), (-1, 3), (0, 4), (0, 2), (1, 2),
      (-1, 2), (0, 1), (1, 1), (-1, 1), (0, 0)]
  then throwError "Test failed!"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variant153151ce19d988cb42f210bfbc04b8e3f0e796477f5bf53b41ae99c8bcc2a241.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ffcdd3560dab52ad97ddc5614e4a76755e56c5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
