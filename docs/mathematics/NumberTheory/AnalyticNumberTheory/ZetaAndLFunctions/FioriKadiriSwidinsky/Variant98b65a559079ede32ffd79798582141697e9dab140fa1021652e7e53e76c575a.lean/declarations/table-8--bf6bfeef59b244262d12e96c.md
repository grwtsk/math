# table_8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ca96cac59f8e3070d6746f6ab3074aa53fffb0c697e83faa6d8603e719e8c76",
  "kind": "def",
  "lexical_name": "table_8",
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
  "slug": "table-8--bf6bfeef59b244262d12e96c",
  "source": {
    "blob": "aeb084ec45220d3f0ae964018cea4bce2d78a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 57,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf6bfeef59b244262d12e96c40553ce337670c8b5773b08bedbc0988e8978039",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ca96cac59f8e3070d6746f6ab3074aa53fffb0c697e83faa6d8603e719e8c76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def table_8 : List (ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ) := [
    (0.60, 0.65, 0.2456, 0.3089, 0.3405, 8.0587, 3.7669, 11.3285, 5.2954),
    (0.65, 0.70, 0.2167, 0.3089, 0.3399, 10.3373, 4.8415, 10.4569, 4.8975),
    (0.70, 0.75, 0.1879, 0.3089, 0.3391, 13.1505, 6.1727, 9.5853, 4.4992),
    (0.75, 0.80, 0.1595, 0.3089, 0.3383, 16.5704, 7.7979, 8.7136, 4.1006),
    (0.80, 0.81, 0.1538, 0.3089, 0.3381, 17.3322, 8.1610, 7.8423, 3.6926),
    (0.81, 0.82, 0.1482, 0.3090, 0.3379, 18.1208, 8.5373, 7.6679, 3.6126),
    (0.82, 0.83, 0.1426, 0.3090, 0.3377, 18.9362, 8.9269, 7.4935, 3.5326),
    (0.83, 0.84, 0.1370, 0.3090, 0.3374, 19.7785, 9.3298, 7.3192, 3.4526),
    (0.84, 0.85, 0.1314, 0.3090, 0.3372, 20.6478, 9.7461, 7.1448, 3.3725),
    (0.85, 0.86, 0.1259, 0.3091, 0.3370, 21.5438, 10.1759, 6.9704, 3.2924),
    (0.86, 0.87, 0.1204, 0.3091, 0.3368, 22.4663, 10.6191, 6.7960, 3.2123),
    (0.87, 0.88, 0.1150, 0.3092, 0.3365, 23.4149, 11.0755, 6.6216, 3.1321),
    (0.88, 0.89, 0.1095, 0.3092, 0.3363, 24.3889, 11.5450, 6.4473, 3.0519),
    (0.89, 0.90, 0.1041, 0.3093, 0.3360, 25.3877, 12.0272, 6.2729, 2.9717),
    (0.90, 0.91, 0.09880, 0.3093, 0.3357, 26.4101, 12.5220, 6.0984, 2.8915),
    (0.91, 0.92, 0.09350, 0.3094, 0.3354, 27.4552, 13.0287, 5.9240, 2.8112),
    (0.92, 0.93, 0.08830, 0.3095, 0.3351, 28.5213, 13.5468, 5.7496, 2.7309),
    (0.93, 0.94, 0.08310, 0.3096, 0.3348, 29.6068, 14.0757, 5.5752, 2.6506),
    (0.94, 0.95, 0.07810, 0.3097, 0.3345, 30.7098, 14.6145, 5.4007, 2.5702),
    (0.95, 0.96, 0.07310, 0.3098, 0.3341, 31.8279, 15.1623, 5.2263, 2.4897),
    (0.96, 0.97, 0.06820, 0.3100, 0.3338, 32.9585, 15.7181, 5.0518, 2.4093),
    (0.97, 0.98, 0.06340, 0.3101, 0.3334, 34.0986, 16.2805, 4.8774, 2.3287),
    (0.98, 0.99, 0.05870, 0.3103, 0.3330, 35.2450, 16.8481, 4.7029, 2.2481),
    (0.99, 1.0, 0.05410, 0.3105, 0.3326, 36.3939, 17.4194, 4.5284, 2.1675),
    (0.60, 0.70, 0.2167, 0.3117, 0.3434, 7.9115, 3.6668, 11.3303, 5.2513),
    (0.70, 0.80, 0.1595, 0.3117, 0.3418, 13.8214, 6.4369, 9.5869, 4.4648),
    (0.80, 0.81, 0.1539, 0.3118, 0.3416, 14.5818, 6.7949, 7.8444, 3.6554),
    (0.81, 0.82, 0.1483, 0.3118, 0.3414, 15.3770, 7.1697, 7.6700, 3.5762),
    (0.82, 0.83, 0.1427, 0.3118, 0.3412, 16.2078, 7.5617, 7.4957, 3.4971),
    (0.83, 0.84, 0.1371, 0.3119, 0.3410, 17.0751, 7.9713, 7.3213, 3.4179),
    (0.84, 0.85, 0.1315, 0.3119, 0.3407, 17.9796, 8.3991, 7.1469, 3.3387),
    (0.85, 0.86, 0.1260, 0.3119, 0.3405, 18.9219, 8.8453, 6.9725, 3.2594),
    (0.86, 0.87, 0.1205, 0.3119, 0.3403, 19.9027, 9.3103, 6.7982, 3.1801),
    (0.87, 0.88, 0.1150, 0.3120, 0.3400, 20.9223, 9.7945, 6.6238, 3.1008),
    (0.88, 0.89, 0.1096, 0.3120, 0.3398, 21.9809, 10.2980, 6.4494, 3.0215),
    (0.89, 0.90, 0.1042, 0.3121, 0.3395, 23.0788, 10.8209, 6.2750, 2.9422),
    (0.90, 0.91, 0.09890, 0.3121, 0.3392, 24.2157, 11.3635, 6.1006, 2.8628),
    (0.91, 0.92, 0.09360, 0.3122, 0.3389, 25.3914, 11.9256, 5.9261, 2.7833),
    (0.92, 0.93, 0.08840, 0.3123, 0.3386, 26.6053, 12.5071, 5.7517, 2.7039),
    (0.93, 0.94, 0.08320, 0.3124, 0.3383, 27.8566, 13.1078, 5.5773, 2.6244),
    (0.94, 0.95, 0.07810, 0.3125, 0.3379, 29.1440, 13.7273, 5.4028, 2.5448),
    (0.95, 0.96, 0.07310, 0.3126, 0.3376, 30.4660, 14.3650, 5.2284, 2.4653),
    (0.96, 0.97, 0.06820, 0.3128, 0.3372, 31.8207, 15.0203, 5.0539, 2.3856),
    (0.97, 0.98, 0.06340, 0.3129, 0.3368, 33.2059, 15.6924, 4.8794, 2.3059),
    (0.98, 0.99, 0.05870, 0.3131, 0.3364, 34.6187, 16.3800, 4.7049, 2.2262),
    (0.99, 1.0, 0.05420, 0.3133, 0.3360, 36.0559, 17.0819, 4.5304, 2.1464)]

@[blueprint
  "fks-theorem-2-7"
  (title := "FKS Theorem 2.7")
  (statement := /--
    Let $H_0$ denote a verification height for RH.  Let $10^9/H_0≤ k \leq 1$, $t > 0$,
    $H \in [1002, H_0)$, $α > 0$, $δ ≥ 1$, $\eta_0 = 0.23622$, $1 + \eta_0 \leq \mu \leq 1+\eta$,
    and $\eta \in (\eta_0, 1/2)$ be fixed. Let $\sigma > 1/2 + d / \log H_0$.  Then for any
    $T \geq H_0$, one has
    $$ N(\sigma,T) \leq (T-H) \log T / (2\pi d) *
      \log ( 1 + CC_1(\log(kT))^{2\sigma} (\log T)^{4(1-\sigma)} T^{8/3(1-\sigma)} / (T-H) )
      + CC_2 * \log^2 T / 2 \pi d$$
    and
    $$ N(\sigma,T) \leq \frac{CC_1}{2\pi d} (\log kT)^{2\sigma} (\log T)^{5-4*\sigma}
      T^{8/3(1-\sigma)} + CC_2 * \log^2 T / 2 \pi d$$.
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FioriKadiriSwidinsky/Variant98b65a559079ede32ffd79798582141697e9dab140fa1021652e7e53e76c575a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeb084ec45220d3f0ae964018cea4bce2d78a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
