# exponentVectorNat_mem_boundedSmoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68c8978d-c4da-ad2f-fb2e-d5a1faf5f1ec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cbd44d3-054a-a226-479f-c84322c3480c",
  "kind": "theorem",
  "lexical_name": "exponentVectorNat_mem_boundedSmoothNumbers",
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
  "slug": "exponentvectornat-mem-boundedsmoothnumbers--95ed357c937819f3727e2c5c",
  "source": {
    "blob": "6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ed357c937819f3727e2c5c8c9966ef758b0647faaf9e92aef631516edd1b9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbd44d3-054a-a226-479f-c84322c3480c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentVectorNat_mem_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (e : ExponentVector S K) :
    exponentVectorNat S K e ∈ boundedSmoothNumbers S K := by
  simp [boundedSmoothNumbers]

end AnalyticNumberTheory
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variante3d03a5f091841884cb0728828c185d21d6bbbd6997eeded53b78252656bda7d.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f54a1f9ebfe586f26319ef8beb87a1ba89b1b74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
