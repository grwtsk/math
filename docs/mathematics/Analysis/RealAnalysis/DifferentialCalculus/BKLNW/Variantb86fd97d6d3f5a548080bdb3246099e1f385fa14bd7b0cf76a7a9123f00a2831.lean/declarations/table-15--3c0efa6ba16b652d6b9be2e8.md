# Table_15

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24c385d222fba85f7e810d9c7279b240110827fc1c05558c7b19b04e33c5c519",
  "kind": "def",
  "lexical_name": "Table_15",
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
  "slug": "table-15--3c0efa6ba16b652d6b9be2e8",
  "source": {
    "blob": "ffde19a257af38792c1e302adf6bb58acc6c98a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2158,
    "line": 2061,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c0efa6ba16b652d6b9be2e87e91163262e58e9e8109333e6f0aed04bb5a52ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24c385d222fba85f7e810d9c7279b240110827fc1c05558c7b19b04e33c5c519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2061–2158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Table_15 : List (ℝ × (Fin 5 → ℝ)) := [
  (0, ![1.2323e0, 3.9649e0, 2.0829e1, 1.5123e2, 1.3441e5]),
  (log 1e5, ![5.5316e-2, 6.4673e-1, 7.5612e0, 8.9346e1, 1.3441e5]),
  (log 5e5, ![2.6724e-2, 3.5744e-1, 4.7808e0, 6.3944e1, 1.3441e5]),
  (log 1e6, ![2.3240e-2, 3.2309e-1, 4.4916e0, 6.2444e1, 1.3441e5]),
  (log 5e6, ![1.0236e-2, 1.5952e-1, 2.4860e0, 5.7184e1, 1.3441e5]),
  (log 1e7, ![8.4725e-3, 1.3675e-1, 2.2071e0, 5.7184e1, 1.3441e5]),
  (log 5e7, ![3.8550e-3, 6.8701e-2, 1.2244e0, 5.7184e1, 1.3441e5]),
  (log 1e8, ![2.7457e-3, 5.0612e-2, 9.4259e-1, 5.7184e1, 1.3441e5]),
  (log 1e9, ![9.5913e-4, 2.0087e-2, 4.2065e-1, 5.7184e1, 1.3441e5]),
  (log 1e10, ![3.7787e-4, 8.7526e-3, 2.0274e-1, 5.7184e1, 1.3441e5]),
  (log 19035709163, ![2.6773e-4, 6.3370e-3, 1.5000e-1, 5.7184e1, 1.3441e5]),
  (log 2e10, ![2.4601e-4, 5.8365e-3, 1.3848e-1, 5.7184e1, 1.3441e5]),
  (log 5e10, ![1.8556e-4, 4.5722e-3, 1.1266e-1, 5.7184e1, 1.3441e5]),
  (log 1e11, ![1.3392e-4, 3.4053e-3, 8.6589e-2, 5.7184e1, 1.3441e5]),
  (log 2e11, ![7.8683e-5, 2.0591e-3, 5.3886e-2, 5.7184e1, 1.3441e5]),
  (log 3e11, ![7.0193e-5, 1.8758e-3, 5.0536e-2, 5.7184e1, 1.3441e5]),
  (log 4e11, ![7.0193e-5, 1.8758e-3, 5.0536e-2, 5.7184e1, 1.3441e5]),
  (log 5e11, ![6.9322e-5, 1.8717e-3, 5.0536e-2, 5.7184e1, 1.3441e5]),
  (log 6e11, ![6.9322e-5, 1.8717e-3, 5.0536e-2, 5.7184e1, 1.3441e5]),
  (28, ![4.3555e-5, 1.2196e-3, 3.4148e-2, 5.7184e1, 1.3441e5]),
  (29, ![2.7336e-5, 7.9272e-4, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (30, ![1.7139e-5, 5.1415e-4, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (31, ![1.0735e-5, 3.3277e-4, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (32, ![7.0053e-6, 2.2417e-4, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (33, ![4.3798e-6, 1.4454e-4, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (34, ![2.7360e-6, 9.3023e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (35, ![1.7078e-6, 5.9771e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (36, ![1.0652e-6, 3.8345e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (37, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (38, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (39, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (40, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (41, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (42, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (43, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (19 * log 10, ![8.6315e-7, 3.7979e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (44, ![7.8163e-7, 3.5174e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (45, ![5.0646e-7, 2.3298e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (46, ![3.2935e-7, 1.5480e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (47, ![2.1308e-7, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (48, ![1.3791e-7, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (49, ![8.9140e-8, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (50, ![5.7545e-8, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (55, ![6.3417e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (60, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (65, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (70, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (80, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (90, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (100, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (200, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (300, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (400, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (500, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (600, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (700, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (800, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (900, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (1000, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (1500, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (2000, ![4.4627e-9, 1.0376e-5, 2.4334e-2, 5.7184e1, 1.3441e5]),
  (2500, ![2.2885e-9, 5.7783e-6, 1.4591e-2, 3.6840e1, 9.3021e4]),
  (3000, ![1.3915e-10, 4.2091e-7, 1.2733e-3, 3.8516e0, 1.1651e4]),
  (3500, ![8.7646e-12, 3.0896e-8, 1.0891e-4, 3.8390e-1, 1.3533e3]),
  (4000, ![5.7410e-13, 2.3108e-9, 9.3007e-6, 3.7436e-2, 1.5068e2]),
  (5000, ![2.8715e-15, 1.4645e-11, 7.4687e-8, 3.8091e-4, 1.9426e0]),
  (6000, ![1.7952e-17, 1.0951e-13, 6.6798e-10, 4.0747e-6, 2.4856e-2]),
  (7000, ![1.4744e-19, 1.0468e-15, 7.4322e-12, 5.2769e-8, 3.7466e-4]),
  (8000, ![1.6007e-21, 1.2966e-17, 1.0502e-13, 8.5065e-10, 6.8903e-6]),
  (9000, ![2.2253e-23, 2.0250e-19, 1.8428e-15, 1.6769e-11, 1.5260e-7]),
  (10000, ![3.8228e-25, 3.8610e-21, 3.8997e-17, 3.9387e-13, 3.9780e-9]),
  (11000, ![7.9284e-27, 8.8005e-23, 9.7685e-19, 1.0844e-14, 1.2036e-10]),
  (12000, ![1.9331e-28, 2.3390e-24, 2.8302e-20, 3.4245e-16, 4.1437e-12]),
  (13000, ![5.5830e-30, 7.5371e-26, 1.0175e-21, 1.3737e-17, 1.8544e-13]),
  (14000, ![1.8399e-31, 2.7598e-27, 4.1396e-23, 6.2094e-19, 9.3141e-15]),
  (15000, ![6.5712e-33, 1.0514e-28, 1.6823e-24, 2.6916e-20, 4.3065e-16]),
  (16000, ![2.5739e-34, 4.3756e-30, 7.4384e-26, 1.2646e-21, 2.1497e-17]),
  (17000, ![1.1168e-35, 2.0101e-31, 3.6182e-27, 6.5127e-23, 1.1723e-18]),
  (18000, ![5.3739e-37, 1.0211e-32, 1.9400e-28, 3.6860e-24, 7.0033e-20]),
  (19000, ![2.7357e-38, 5.4714e-34, 1.0943e-29, 2.1886e-25, 4.3772e-21]),
  (20000, ![1.5041e-39, 3.1585e-35, 6.6329e-31, 1.3929e-26, 2.9251e-22]),
  (21000, ![9.0606e-41, 1.9934e-36, 4.3853e-32, 9.6477e-28, 2.1225e-23]),
  (22000, ![5.6101e-42, 1.2904e-37, 2.9678e-33, 6.8258e-29, 1.5700e-24]),
  (23000, ![3.7554e-43, 9.0129e-39, 2.1631e-34, 5.1915e-30, 1.2460e-25]),
  (24000, ![2.6756e-44, 6.6889e-40, 1.6723e-35, 4.1806e-31, 1.0452e-26]),
  (25000, ![7.5635e-45, 1.8909e-40, 4.7272e-36, 1.1818e-31, 2.9545e-27])
]

/- [FIX]: This fixes a typo in the original paper https://arxiv.org/pdf/2002.11068. -/
@[blueprint
  "bklnw-thm-1b-table"
  (title := "BKLNW Theorem 1b, table form")
  (statement := /--  See \cite[Table 15]{BKLNW} for values of $m_k$ and $M_k$, for $k \in \{1,2,3,4,5\}$.
  The first column of the table is the logarithmic threshold \(b = \log X_0\), so a row with first
  component \(b\) applies for \(x \geq \exp b\).
  -/)
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variantb86fd97d6d3f5a548080bdb3246099e1f385fa14bd7b0cf76a7a9123f00a2831.lean#L2061).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde19a257af38792c1e302adf6bb58acc6c98a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
