# tendsto_cRatio_quartic_D1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "282effa9c3758192cbef75f8323437363b039b6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:055230ac-32d0-9112-6bad-43f4be7f0c71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f04c7ce0-9c38-818d-5896-232ac0452482",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_quartic_D1",
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
  "slug": "tendsto-cratio-quartic-d1--afbb424ec87443c590454284",
  "source": {
    "blob": "282effa9c3758192cbef75f8323437363b039b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afbb424ec87443c5904542849d9601033d86d21705e8d2b553b276f074fa02af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f04c7ce0-9c38-818d-5896-232ac0452482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_quartic_D1 (hP : P.Valid) :
    Tendsto (fun T => ThmD.cRatio (P.lam1 T) ((P.atV vQuartic T).a T) ((P.atV vQuartic T).b T)
      (2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D1 (y / l T) * (P.atV vQuartic T).g T y))) atTop
      (𝓝 (cWin D1 P.lam vQuartic)) :=
  tendsto_cRatio_quartic hP (continuousOn_D1 _) (fun _ hx => D1_nonneg hx.1)

end K3

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `282effa9c3758192cbef75f8323437363b039b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
