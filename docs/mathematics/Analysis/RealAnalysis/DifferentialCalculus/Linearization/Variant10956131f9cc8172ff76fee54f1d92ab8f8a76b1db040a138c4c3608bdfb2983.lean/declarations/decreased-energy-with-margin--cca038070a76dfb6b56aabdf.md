# decreased_energy_with_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61cc3d3f8916e29d6173fca90db444e01da21d20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7feee47-4c9c-8926-7946-d3d763703b23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c174c77-3455-c895-3497-df3fc63aaec0",
  "kind": "theorem",
  "lexical_name": "decreased_energy_with_margin",
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
  "slug": "decreased-energy-with-margin--cca038070a76dfb6b56aabdf",
  "source": {
    "blob": "61cc3d3f8916e29d6173fca90db444e01da21d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cca038070a76dfb6b56aabdf9fc765aa847c771011f375aa1cf35b646417be48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c174c77-3455-c895-3497-df3fc63aaec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decreased_energy_with_margin
    {HilbertState : Type u}
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState]
    (certificate :
      FiniteLyapunovOperatorCertificate HilbertState)
    (state : HilbertState) :
    (inner ℂ (certificate.derivative state)
        (certificate.energyOperator
          (certificate.derivative state))).re +
        certificate.decrease * ‖state‖ ^ 2 ≤
      (inner ℂ state
        (certificate.energyOperator state)).re := by
  linarith [certificate.operator_decreases_energy state]

end FiniteLyapunovOperatorCertificate

/--
Exact or interval payloads remain data until a proved checker accepts them.
The checker theorem, not the payload, yields the proposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61cc3d3f8916e29d6173fca90db444e01da21d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
