# hcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:472efde829b89405591169e96edc41caacb67d8f27914fd09cc587fc1998f276",
  "kind": "def",
  "lexical_name": "hcomp",
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
  "slug": "hcomp--d1b64fc2aa4eb29d16c9c91e",
  "source": {
    "blob": "e72f2e002c138a3f907088a3e9ef56841bed2091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 145,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1b64fc2aa4eb29d16c9c91e3b31b841373b2308da55bfa058d7705a0348857c",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:472efde829b89405591169e96edc41caacb67d8f27914fd09cc587fc1998f276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hcomp (F : Homotopy p₀ q₀) (G : Homotopy p₁ q₁) : Homotopy (p₀.trans p₁) (q₀.trans q₁) where
  toFun x :=
    if (x.2 : ℝ) ≤ 1 / 2 then (F.eval x.1).extend (2 * x.2) else (G.eval x.1).extend (2 * x.2 - 1)
  continuous_toFun := continuous_if_le (continuous_induced_dom.comp continuous_snd) continuous_const
    (F.toHomotopy.continuous.comp (by continuity)).continuousOn
    (G.toHomotopy.continuous.comp (by continuity)).continuousOn fun x hx => by norm_num [hx]
  map_zero_left x := by simp [Path.trans]
  map_one_left x := by simp [Path.trans]
  prop' x t ht := by
    rcases ht with ht | ht
    · norm_num [ht]
    · rw [Set.mem_singleton_iff] at ht
      norm_num [ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72f2e002c138a3f907088a3e9ef56841bed2091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
