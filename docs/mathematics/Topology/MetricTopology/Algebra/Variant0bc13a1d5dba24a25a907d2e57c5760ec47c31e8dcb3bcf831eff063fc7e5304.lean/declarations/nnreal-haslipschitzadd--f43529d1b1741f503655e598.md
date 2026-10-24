# NNReal.hasLipschitzAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b34de5bcc919b9b0f8730aa99f2fc35db61b474fec85e667bc053ba0fca8be7",
  "kind": "instance",
  "lexical_name": "NNReal.hasLipschitzAdd",
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
  "slug": "nnreal-haslipschitzadd--f43529d1b1741f503655e598",
  "source": {
    "blob": "a1668b25fcccf38fe31344d1ea1e3b60de07a122",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 99,
    "path": "GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f43529d1b1741f503655e598de5f0cf29a597c24f916146bfa835200a0080c03",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b34de5bcc919b9b0f8730aa99f2fc35db61b474fec85e667bc053ba0fca8be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.hasLipschitzAdd : LipschitzAdd ℝ≥0 where
  lipschitz_add := ⟨LipschitzAdd.C ℝ, by
    rintro ⟨x₁, x₂⟩ ⟨y₁, y₂⟩
    exact lipschitzWith_lipschitz_const_add_edist ⟨(x₁ : ℝ), x₂⟩ ⟨y₁, y₂⟩⟩

end LipschitzMul

section IsBoundedSMul

variable [Zero α] [Zero β] [SMul α β]

/-- Mixin typeclass on a scalar action of a metric space `α` on a metric space `β` both with
distinguished points `0`, requiring compatibility of the action in the sense that
`dist (x • y₁) (x • y₂) ≤ dist x 0 * dist y₁ y₂` and
`dist (x₁ • y) (x₂ • y) ≤ dist x₁ x₂ * dist y 0`.

If `[NormedDivisionRing α] [SeminormedAddCommGroup β] [Module α β]` are assumed, then prefer writing
`[NormSMulClass α β]` instead of using `[IsBoundedSMul α β]`, since while equivalent, typeclass
search can only infer the latter from the former and not vice versa. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1668b25fcccf38fe31344d1ea1e3b60de07a122` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
