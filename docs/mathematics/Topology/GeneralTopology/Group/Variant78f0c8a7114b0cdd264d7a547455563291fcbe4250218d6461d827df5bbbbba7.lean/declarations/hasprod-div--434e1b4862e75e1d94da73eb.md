# HasProd.div₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54ef51e9-2dbb-8e74-0de7-3a4ca28d2060",
  "kind": "theorem",
  "lexical_name": "HasProd.div₀",
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
  "slug": "hasprod-div--434e1b4862e75e1d94da73eb",
  "source": {
    "blob": "012d8e3b94ea55cc7b2ad74566caecb6d9ac6479",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 493,
    "path": "GRWTSK/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:434e1b4862e75e1d94da73eb2da82438b56c952ab2554efa73452c0f2a49f38a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54ef51e9-2dbb-8e74-0de7-3a4ca28d2060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProd.div₀ [ContinuousInv₀ K] [ContinuousMul K] {a b : K}
    (hf : HasProd f a L) (hg : HasProd g b L) (hb : b ≠ 0) :
    HasProd (fun x ↦ f x / g x) (a / b) L := by
  simp only [div_eq_mul_inv]
  exact hf.mul <| hg.inv₀ hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Group/Variant78f0c8a7114b0cdd264d7a547455563291fcbe4250218d6461d827df5bbbbba7.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012d8e3b94ea55cc7b2ad74566caecb6d9ac6479` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
