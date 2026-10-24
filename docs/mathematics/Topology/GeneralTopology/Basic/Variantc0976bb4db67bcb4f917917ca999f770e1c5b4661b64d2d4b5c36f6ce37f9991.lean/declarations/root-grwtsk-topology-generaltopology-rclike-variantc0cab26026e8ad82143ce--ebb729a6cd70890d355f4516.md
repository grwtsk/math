# _root_.GRWTSK.Topology.GeneralTopology.RCLike.Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.StarModule.instOrderedSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c33a7649-5fbb-7415-38a3-3800c1259cb3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.RCLike.Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.StarModule.instOrderedSMul",
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
  "slug": "root-grwtsk-topology-generaltopology-rclike-variantc0cab26026e8ad82143ce--ebb729a6cd70890d355f4516",
  "source": {
    "blob": "0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 889,
    "line": 881,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebb729a6cd70890d355f45163b4b4b1b477afe8774fd84a62869207b3ce4d0de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c33a7649-5fbb-7415-38a3-3800c1259cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–889.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.RCLike.Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.StarModule.instOrderedSMul {A : Type*} [NonUnitalRing A] [StarRing A] [PartialOrder A]
    [StarOrderedRing A] [Module K A] [StarModule K A] [IsScalarTower K A A] [SMulCommClass K A A] :
    OrderedSMul K A where
  smul_lt_smul_of_pos {_ _ _} hxy hc := StarModule.smul_lt_smul_of_pos hxy hc
  lt_of_smul_lt_smul_of_pos {x y c} hxy hc := by
    have : c⁻¹ • c • x < c⁻¹ • c • y :=
      StarModule.smul_lt_smul_of_pos hxy (RCLike.inv_pos_of_pos hc)
    simpa [smul_smul, inv_mul_cancel₀ hc.ne'] using this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0976bb4db67bcb4f917917ca999f770e1c5b4661b64d2d4b5c36f6ce37f9991.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0939cb7d2b9c1c8061a0fc65f7d20afba88fd67a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
