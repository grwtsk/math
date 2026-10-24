# Table_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d8fa70791d9d4e35226da0991ecd60f4af1171bf31c88ce6915a09f605e7ae",
  "kind": "def",
  "lexical_name": "Table_4",
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
  "slug": "table-4--b1b654aaf67065f2bbd82fe0",
  "source": {
    "blob": "88be1b47c741ee6510e22488953556110e8e6ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4019,
    "line": 3974,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1b654aaf67065f2bbd82fe022b4330e8d61f7ed48985c98c01cfa908ef98198",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d8fa70791d9d4e35226da0991ecd60f4af1171bf31c88ce6915a09f605e7ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3974–4019.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Table_4 : List (ℝ × ℝ) := [
  (44, 1.7893e-8), (45, 1.1449e-8), (46, 7.2959e-9), (47, 4.6388e-9), (48, 2.9451e-9),
  (49, 1.8680e-9), (50, 1.1785e-9), (51, 7.4479e-10), (52, 4.7046e-10), (53, 2.9707e-10),
  (54, 1.8753e-10), (55, 1.1785e-10), (56, 7.4191e-11), (57, 4.6692e-11), (58, 2.9380e-11),
  (59, 1.8774e-11), (60, 1.2330e-11), (61, 8.4134e-12), (62, 6.0325e-12), (63, 4.5827e-12),
  (64, 3.6978e-12), (65, 3.1557e-12), (66, 2.8216e-12), (67, 2.6138e-12), (68, 2.4828e-12),
  (69, 2.3985e-12), (70, 2.3427e-12), (71, 2.3043e-12), (72, 2.2766e-12), (73, 2.2555e-12),
  (74, 2.2387e-12), (75, 2.2244e-12), (76, 2.2120e-12), (77, 2.2006e-12), (78, 2.1901e-12),
  (79, 2.1802e-12), (80, 2.1708e-12), (81, 2.1617e-12), (82, 2.1530e-12), (83, 2.1446e-12),
  (84, 2.1364e-12), (85, 2.1284e-12), (86, 2.1207e-12), (87, 2.1132e-12), (88, 2.1059e-12),
  (89, 2.0988e-12), (90, 2.0919e-12), (91, 2.0851e-12), (92, 2.0786e-12), (93, 2.0721e-12),
  (94, 2.0659e-12), (95, 2.0598e-12), (96, 2.0538e-12), (97, 2.0480e-12), (98, 2.0423e-12),
  (99, 2.0367e-12), (100, 2.0339e-12), (110, 1.9853e-12), (120, 1.9457e-12), (130, 1.9126e-12),
  (140, 1.8847e-12), (150, 1.8608e-12), (160, 1.8401e-12), (170, 1.8219e-12), (180, 1.8059e-12),
  (190, 1.7917e-12), (200, 1.7789e-12), (210, 1.7675e-12), (220, 1.7571e-12), (230, 1.7476e-12),
  (240, 1.7390e-12), (250, 1.7311e-12), (260, 1.7238e-12), (270, 1.7171e-12), (280, 1.7108e-12),
  (290, 1.7051e-12), (300, 1.6997e-12), (310, 1.6946e-12), (320, 1.6899e-12), (330, 1.6855e-12),
  (340, 1.6814e-12), (350, 1.6775e-12), (360, 1.6738e-12), (370, 1.6703e-12), (380, 1.6670e-12), (390, 1.6639e-12),
  (400, 1.6609e-12), (410, 1.6581e-12), (420, 1.6554e-12), (430, 1.6529e-12), (440, 1.6505e-12),
  (450, 1.6481e-12), (475, 1.6428e-12), (500, 1.6380e-12), (525, 1.6336e-12), (550, 1.6296e-12),
  (575, 1.6260e-12), (600, 1.6227e-12), (625, 1.6197e-12), (650, 1.6169e-12), (675, 1.6143e-12),
  (700, 1.6119e-12), (725, 1.6097e-12), (750, 1.6076e-12), (775, 1.6057e-12), (800, 1.6038e-12),
  (825, 1.6021e-12), (850, 1.6005e-12), (875, 1.5990e-12), (900, 1.5976e-12), (925, 1.5962e-12),
  (950, 1.5949e-12), (975, 1.5937e-12), (1000, 1.5925e-12), (1025, 1.5914e-12), (1050, 1.5904e-12),
  (1075, 1.5894e-12), (1100, 1.5885e-12), (1125, 1.5875e-12), (1150, 1.5867e-12), (1175, 1.5858e-12),
  (1200, 1.5850e-12), (1225, 1.5843e-12), (1250, 1.5836e-12), (1275, 1.5828e-12), (1300, 1.5822e-12),
  (1325, 1.5815e-12), (1350, 1.5809e-12), (1375, 1.5803e-12), (1400, 1.5797e-12), (1425, 1.5791e-12),
  (1450, 1.5786e-12), (1475, 1.5781e-12), (1500, 1.5776e-12), (1525, 1.5771e-12), (1550, 1.5766e-12),
  (1575, 1.5761e-12), (1600, 1.5757e-12), (1625, 1.5753e-12), (1650, 1.5749e-12), (1675, 1.5745e-12),
  (1700, 1.5741e-12), (1725, 1.5737e-12), (1750, 1.5733e-12), (1775, 1.5729e-12), (1800, 1.5726e-12),
  (1825, 1.5723e-12), (1850, 1.5719e-12), (1875, 1.5716e-12), (1900, 1.5713e-12), (1925, 1.5710e-12),
  (1950, 1.5707e-12), (1975, 1.5704e-12), (2000, 1.5701e-12), (2100, 1.3254e-12), (2200, 7.1013e-13),
  (2300, 3.8078e-13), (2400, 2.0436e-13), (2500, 1.0977e-13), (2600, 5.9004e-14), (2700, 3.1743e-14),
  (2800, 1.7095e-14), (2900, 9.2127e-15), (3000, 4.9698e-15), (3100, 2.6833e-15), (3200, 1.4502e-15),
  (3300, 7.8459e-16), (3400, 4.2495e-16), (3500, 2.3044e-16), (3600, 1.2511e-16), (3700, 6.8015e-17),
  (3800, 3.7027e-17), (3900, 2.0187e-17), (4000, 1.1024e-17), (4100, 6.0301e-18), (4200, 3.3046e-18),
  (4300, 1.8146e-18), (4400, 9.9846e-19), (4500, 5.5065e-19), (4600, 3.0441e-19), (4700, 1.6903e-19),
  (4800, 9.4404e-20), (4900, 5.3026e-20), (5000, 2.9949e-20), (6000, 1.2979e-22), (7000, 8.5175e-25),
  (8000, 7.7862e-27), (9000, 9.2230e-29), (10000, 1.3682e-30), (20000, 1.9349e-45), (30000, 6.6592e-57),
  (40000, 1.3470e-66), (50000, 3.7292e-75), (60000, 6.6648e-83), (70000, 4.9112e-90), (80000, 1.1133e-96),
  (90000, 6.3306e-103), (100000, 7.7825e-109), (200000, 1.2375e-156), (300000, 2.1902e-193), (400000, 2.1118e-224),
  (500000, 9.5685e-252), (600000, 1.7723e-276), (700000, 3.1360e-299), (800000, 2.0569e-320),
  (900000, 2.5885e-340), (1e6, 3.8635e-359), (1e7, 1.0364e-1153)
]

/-- Table 5.  Sample of values showing $\eps_{\pi, asymp}(x_1)$ interpolates an upper bound for $\eps_{\pi,num}(x_1)$ with $A_\pi = 121.107$, $B = 3.2$, and $C = 2$.  See Corollary 22.  Note that values $\eps_{\pi, num}(x_1,\infty)$ displayed are computed using (12) from Theorem 6 rather than Corollary 8. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variant399c19bb8ffc9e48d236e25258e04314748bbee8fe0190c80f7d6fe7312985f3.lean#L3974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88be1b47c741ee6510e22488953556110e8e6ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
