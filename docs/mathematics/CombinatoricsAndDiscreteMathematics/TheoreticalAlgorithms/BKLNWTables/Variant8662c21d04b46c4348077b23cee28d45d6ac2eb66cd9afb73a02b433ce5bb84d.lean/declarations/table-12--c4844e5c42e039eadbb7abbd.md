# table_12

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78ca0128d78fa849160334a462f11cdbb9ed4b479520de9b781cd13a5cdcd70a",
  "kind": "def",
  "lexical_name": "table_12",
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
  "slug": "table-12--c4844e5c42e039eadbb7abbd",
  "source": {
    "blob": "be7f02109c11b29282a87bb98e199242d2cf0b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1016,
    "line": 986,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4844e5c42e039eadbb7abbdc92976733ec7b2b1532fd40055c2c8b4d39e8bcc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78ca0128d78fa849160334a462f11cdbb9ed4b479520de9b781cd13a5cdcd70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 986–1016.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def table_12 : List (ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ ) := [
  (20, 1.68440e-3, 3.36880e-2, 6.73750e-1, 1.34750e1, 2.69500e2, 0.8, 0.81, 5e10),
  (21, 1.06840e-3, 2.24350e-2, 4.71140e-1, 9.89390e0, 2.07780e2, 0.8, 0.81, 5e10),
  (22, 6.76540e-4, 1.48840e-2, 3.27450e-1, 7.20380e0, 1.58490e2, 0.8, 0.81, 5e10),
  (23, 4.27800e-4, 9.83920e-3, 2.26310e-1, 5.20500e0, 1.19720e2, 0.8, 0.81, 5e10),
  (24, 2.70120e-4, 6.48290e-3, 1.55590e-1, 3.73410e0, 8.96190e1, 0.8, 0.81, 5e10),
  (Real.log 5e10, 2.070820e-4, 5.101530e-3, 1.256780e-1, 3.096110e0, 7.627340e1, 0.88, 0.86, 32e12),
  (25, 1.750020e-4, 4.375050e-3, 1.093770e-1, 2.734410e0, 6.836010e1, 0.88, 0.86, 32e12),
  (26, 1.10220e-4, 2.86560e-3, 7.45050e-2, 1.93720e0, 5.03650e1, 0.88, 0.86, 32e12),
  (27, 6.93270e-5, 1.87190e-3, 5.05400e-2, 1.36460e0, 3.68430e1, 0.88, 0.86, 32e12),
  (28, 4.35580e-5, 1.21970e-3, 3.41500e-2, 9.56180e-1, 2.67730e1, 0.88, 0.86, 32e12),
  (29, 2.73380e-5, 7.92780e-4, 2.29910e-2, 6.66730e-1, 1.93360e1, 0.88, 0.86, 32e12),
  (30, 1.71400e-5, 5.14180e-4, 1.54260e-2, 4.62760e-1, 1.38830e1, 0.88, 0.86, 32e12),
  (31, 1.07350e-5, 3.32790e-4, 1.034630e-2, 3.217360e-1, 1.000500e1, 0.88, 0.86, 32e12),
  (Real.log (32e12), 1.069930e-5, 3.327130e-4, 1.034630e-2, 3.217360e-1, 1.000500e1, 0.94, 0.94, 1e19),
  (32, 7.005640e-6, 2.241810e-4, 7.173770e-3, 2.295610e-1, 7.345940e0, 0.94, 0.94, 1e19),
  (33, 4.38000e-6, 1.44540e-4, 4.76990e-3, 1.57410e-1, 5.19440e0, 0.94, 0.94, 1e19),
  (34, 2.73610e-6, 9.30270e-5, 3.16300e-3, 1.07540e-1, 3.65640e0, 0.94, 0.94, 1e19),
  (35, 1.70780e-6, 5.97730e-5, 2.09210e-3, 7.32220e-2, 2.56280e0, 0.94, 0.94, 1e19),
  (36, 1.06520e-6, 3.83460e-5, 1.38050e-3, 4.96960e-2, 1.78910e0, 0.94, 0.94, 1e19),
  (37, 6.63850e-7, 2.45630e-5, 9.08810e-4, 3.36260e-2, 1.24420e0, 0.94, 0.94, 1e19),
  (38, 4.13450e-7, 1.57120e-5, 5.97020e-4, 2.26870e-2, 8.62100e-1, 0.94, 0.94, 1e19),
  (39, 2.57330e-7, 1.00360e-5, 3.91400e-4, 1.52650e-2, 5.95320e-1, 0.94, 0.94, 1e19),
  (40, 1.60060e-7, 6.40240e-6, 2.56100e-4, 1.02440e-2, 4.09750e-1, 0.94, 0.94, 1e19),
  (41, 9.94970e-8, 4.07940e-6, 1.67260e-4, 6.85740e-3, 2.81160e-1, 0.94, 0.94, 1e19),
  (42, 6.18140e-8, 2.59620e-6, 1.09040e-4, 4.57970e-3, 1.92350e-1, 0.94, 0.94, 1e19),
  (43,3.83820e-8 ,1.65050e-6 ,7.09680e-5 ,3.05170e-3 ,1.31220e-1, 0.94, 0.94, 1e19)
]

/-- The `k`-independent factor of `BKLNW.C_bk`: one has
`C_bk b c C RS_prime.c₀ k = b ^ k * C_bk_S b c C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWTables/Variant8662c21d04b46c4348077b23cee28d45d6ac2eb66cd9afb73a02b433ce5bb84d.lean#L986).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be7f02109c11b29282a87bb98e199242d2cf0b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
