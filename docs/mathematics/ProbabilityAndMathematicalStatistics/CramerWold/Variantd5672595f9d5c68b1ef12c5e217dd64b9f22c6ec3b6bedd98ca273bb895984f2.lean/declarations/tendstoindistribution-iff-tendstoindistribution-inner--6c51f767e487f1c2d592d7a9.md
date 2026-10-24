# tendstoInDistribution_iff_tendstoInDistribution_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c44937d3-82bc-a66a-de9e-ede3ac6e17ca",
  "kind": "theorem",
  "lexical_name": "tendstoInDistribution_iff_tendstoInDistribution_inner",
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
  "slug": "tendstoindistribution-iff-tendstoindistribution-inner--6c51f767e487f1c2d592d7a9",
  "source": {
    "blob": "977fa39e970ab38de4bc279c15f5adf6de1f047b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 47,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/CramerWold/Variantd5672595f9d5c68b1ef12c5e217dd64b9f22c6ec3b6bedd98ca273bb895984f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c51f767e487f1c2d592d7a9e4e23cce3f9d8ccdf4e95b794378f29594f38e62",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/CramerWold/Variantd5672595f9d5c68b1ef12c5e217dd64b9f22c6ec3b6bedd98ca273bb895984f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44937d3-82bc-a66a-de9e-ede3ac6e17ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInDistribution_iff_tendstoInDistribution_inner
    (hX' : AEMeasurable X' P') (hX : ∀ n, AEMeasurable (X n) P) :
    TendstoInDistribution X atTop X' (fun _ ↦ P) P' ↔
    (∀ t, TendstoInDistribution (⟪X · ·, t⟫) atTop (⟪X' ·, t⟫) (fun _ ↦ P) P') where
  mp h t := h.continuous_comp (continuous_id.inner continuous_const)
  mpr h := by
    refine .of_tendsto_charFun hX hX' fun t ↦ ?_
    rw [charFun_map_eq_charFun_map_inner_one hX']
    refine (h t).tendsto_charFun 1 |>.congr fun n ↦ ?_
    rw [charFun_map_eq_charFun_map_inner_one (hX n)]

alias ⟨_, TendstoInDistribution.of_inner⟩ := tendstoInDistribution_iff_tendstoInDistribution_inner

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/CramerWold/Variantd5672595f9d5c68b1ef12c5e217dd64b9f22c6ec3b6bedd98ca273bb895984f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/CramerWold/Variantd5672595f9d5c68b1ef12c5e217dd64b9f22c6ec3b6bedd98ca273bb895984f2.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `977fa39e970ab38de4bc279c15f5adf6de1f047b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
