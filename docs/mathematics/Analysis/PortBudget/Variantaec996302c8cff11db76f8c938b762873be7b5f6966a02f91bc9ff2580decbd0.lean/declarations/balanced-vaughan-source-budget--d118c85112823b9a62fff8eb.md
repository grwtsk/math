# balanced_vaughan_source_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed81ba3-ce2e-d3b1-02d9-9871c1360d94",
  "kind": "theorem",
  "lexical_name": "balanced_vaughan_source_budget",
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
  "slug": "balanced-vaughan-source-budget--d118c85112823b9a62fff8eb",
  "source": {
    "blob": "8104fc671f9d316bc8c75ad90f2463f61e04b31a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d118c85112823b9a62fff8ebd825ce788c5826a449584f9870448afd7def510b",
  "verification": {
    "reference": "docs/verification/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed81ba3-ce2e-d3b1-02d9-9871c1360d94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_vaughan_source_budget (U V n : ℕ) (f r : ArithmeticFunction ℝ) :
    |f n| ≤ |CenteredVaughan.lowPart V f n| +
      |((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n| +
      |(((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n| +
      |(((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n| := by
  have h := congrArg (fun g : ArithmeticFunction ℝ => g n)
    (CenteredVaughan.balanced_vaughan_identity U V f r)
  change f n = CenteredVaughan.lowPart V f n +
    ((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n -
    (((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n +
    (((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n at h
  rw [h]
  simpa only [sub_eq_add_neg, abs_neg] using four_port_source_budget
    (CenteredVaughan.lowPart V f n)
    (((CenteredVaughan.lowPart U μ - r) * (ζ * f)) n)
    (-(((CenteredVaughan.lowPart U μ - r) * CenteredVaughan.lowPart V f) * ζ) n)
    ((((CenteredVaughan.highPart U μ + r) * ζ) * CenteredVaughan.highPart V f) n)

end
end GRWTSK.RiemannHypothesis.Conversation.PortBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PortBudget/Variantaec996302c8cff11db76f8c938b762873be7b5f6966a02f91bc9ff2580decbd0.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8104fc671f9d316bc8c75ad90f2463f61e04b31a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
